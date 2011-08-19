class HelloWordController < ApplicationController
	def hello
		render :text => "Hello World!"
	end
end
