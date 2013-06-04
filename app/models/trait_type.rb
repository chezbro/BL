class TraitType < ActiveRecord::Base
	attr_accessible :name, :description, :image_url

	has_many :people, :through => :traits
end
