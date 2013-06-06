class StaticPagesController < ApplicationController

  	def index
  		if signed_in?
  			redirect_to user_url(current_user.id)
  		end
   	end

	def mission
	end
end
