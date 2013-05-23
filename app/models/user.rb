class User < ActiveRecord::Base
	attr_accessible :email, :password
	has_many :people
	has_many :guest_posts

	has_secure_password
	validates :password, :presence => true

	validates :email, :presence => true
	validates :email, :uniqueness => true
	# validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }



end
