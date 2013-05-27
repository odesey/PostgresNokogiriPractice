class Newsletter < ActionMailer::Base
  
  default from: "from@example.com"

    def mailout
    	mail :to => [], :bcc => User.confirmed.all, :subject => "More Amazing News from your friends at Musicpedia"
    end
  
end
