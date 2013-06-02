class User < ActiveRecord::Base
	attr_accessible :email, :password, :password_confirmation, :first_name, :last_name
	has_many :people
	has_many :guest_posts

	has_secure_password
	validates :password, :presence => true, :on => :create

	validates :email, :presence => true
	validates :email, :uniqueness => true
	validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }



	 def self.from_omniauth(auth)
	  	where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
	 end

	  def self.create_from_omniauth(auth)
	    create! do |user|
	      user.access_token = auth.credentials.token
	      user.provider = auth.provider
	      user.uid = auth.uid
	      user.full_name = auth.info.name
	      user.email = auth.info.email
	      user.avatar = auth.info.image
	    end
	  end
end

