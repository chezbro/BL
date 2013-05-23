class SessionsController < ApplicationController

	def new
	end

	def create
		u = User.find_by_email(params[:email])

		if u.present?
			session[:user_id] = u.id
			redirect_to users_url, notice: "Sign In Successful"
		else
			redirect_to signin_url, notice: "Nice Try!"
		end


	end

	def destroy
		reset_session
		redirect_to users_url, notice: "Logged Out"
	end

end
