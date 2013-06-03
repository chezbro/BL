class SessionsController < ApplicationController

	def new
	end

	def create
	  user = User.from_omniauth(env["omniauth.auth"])
	  session[:user_id] = user.id
	  redirect_to root_url, :notice => "You have been successfully logged in, #{user.first_name}"
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_url, :notice => "You have successfully logged out."
	end

	end
