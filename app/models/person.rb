class Person < ActiveRecord::Base
	belongs_to :user
	has_many :guest_posts
	has_many :trait_types, :through => :traits


end
