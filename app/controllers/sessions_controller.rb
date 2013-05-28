class SessionsController < ApplicationController

	def new
	end

	def create
	  user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.id
		redirect_to users_url, :notice => "You have been successfully logged in, #{user.first_name}"
	end

	def destroy
		reset_session
		redirect_to root_url, notice: "Logged Out"
	end

end
