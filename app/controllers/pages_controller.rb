class PagesController < ApplicationController

	def index
	end

	def about
	end

	def new_login
	end

	def process_login
		@username = params[:username]
		@password = params[:password]

		@u= User.where(username: @username).where(password: @password).first 

		if !@u.nil? then
			session[:user_info] = @u
		end

		redirect_ to "/"
	end

	def logout
		session[:user_info] = nil
	end 
end
