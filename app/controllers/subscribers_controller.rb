class SubscribersController < ApplicationController
	
require 'twitter'
	
	#create a new  subscriber
	def create
	if request.post?
		@subscriber = Subscriber.new(:email => params[:email])
		if @subscriber.save
			@success = "Thanks"
		else
			@error = @subscriber.errors.full_messages[0]
			end
		end
	end
end
