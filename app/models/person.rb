class Person < ActiveRecord::Base
	attr_accessible :full_name, :dob, :dod, :eulogy, :photo_url, :charity, :survived_by

	belongs_to :user
	has_many :guest_posts
	has_many :trait_types, :through => :traits

	#Validations

	# validates_presence_of :full_name, :dob, :dob, :eulogy, :photo_url

	validates :eulogy, :length => { :maximum => 1500,
    :too_long => "%{count} characters is the maximum length for a Eulogy" }

    validates :eulogy, :length => { :minimum => 0,
        :too_short => "%{count} characters is the minimum length for a Eulogy" }
end
