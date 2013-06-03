class User < ActiveRecord::Base

	#Mass Assignment
	attr_accessible :email, :password, :password_confirmation, :first_name, :last_name

	#Authorization
	before_filter :authorize_user, only: [:show, :edit, :update, :destroy]

	def authorize_user
	  @user = User.find(params[:id])
	  if @user != current_user
	    redirect_to users_url, notice: "Nice try."
	  end
	end


	# Associations:
	has_many :people
	has_many :guest_posts

	# Password
	has_secure_password

	# Validations
	validates :password, :presence => true, :on => :create, :length => { :in => 6..20 }
	validates :email, :presence => true, :uniqueness => true, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :on => :create }


	#FB Connect
	def self.from_omniauth(auth)
	where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
	end

	def self.create_from_omniauth(auth)
	  create! do |user|
	    user.access_token = auth.credentials.token
	    user.provider = auth.provider
	    user.uid = auth.uid
	    user.first_name = auth.info.first_name
	    user.last_name = auth.info.last_name
	    user.full_name = auth.info.name
	    user.email = auth.info.email
	    user.avatar = auth.info.image
	  end
	end
end

