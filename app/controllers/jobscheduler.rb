class JobScheduler < ActionController::Base

attr_accessor :redis

	# A part that lets you initialize redis so that later on you can call .redis 
	def initialize
		self.redis = Redis.new (:host => "127.0.0.1", :port => 6379)

	end


	def start
		@job =Job.new
		@job.run
		#schedule it to run
	end



	# create an infinite loop that sits there and waits for tasks
	def run
		puts "waiting for tasks"
			while(true)
				do work
				sleep(1) #tell it to sleep if there isn’t any work to be done
			end
			@work = false
		end
	end

	def work
		@work = true
		execute the task
		schedule/stick the redis job on the "end" of the task
	end

	def schedule_work
	
	end


end
