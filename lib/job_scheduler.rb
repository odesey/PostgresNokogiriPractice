require "redis"
require "json"
require "active_model"

class JobScheduler

  attr_accessor :redis

  def initialize
    self.redis = Redis.new(:host => "127.0.0.1", :port => 6379)
  end

  def start
    job = Job.new(:class => "Echo", :method => :say_hello, :args => [ARGV[0]])
    reset_queue
    schedule_task job
  end

  def run
    puts "Waiting for tasks..."
    while(true)
      task = get_task
      do_work(task) if task
      sleep(1)
    end
  end

  def do_work(task_info)
    task = JSON.parse(task_info)
    job = task["class"].constantize
    job.new.send(task["method"], task["args"])
  end

  def reset_queue
    redis.del("jobs")
  end

  def schedule_task(job)
    redis.rpush("jobs", job.to_json)
    puts "Scheduled jobs"
  end

  def get_task
   redis.lpop("jobs")
  end
end