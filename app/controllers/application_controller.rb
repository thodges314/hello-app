class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
  	render text: "hello, world!"
  end

  def goodbye
  	render text: "goodbye world!"
  end

  def hello_random
  	text = ""
  	(Time.now.nsec % 10).times do |n|
  		text += "#{n}: hello there!\n"
  	end
  	render text: text
  end
end
