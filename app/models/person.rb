class Person < ActiveRecord::Base
	attr_accessible :full_name, :dob, :dod, :eulogy, :photo_url, :charity, :survived_by

	belongs_to :user
	has_many :guest_posts
	has_many :trait_types, :through => :traits


end
