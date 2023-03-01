class MessagesController < ApplicationController
  def random_greeting
    message = Message.order("RANDOOM()").first
    render json: { greeting: message.greeting }
  end
end
