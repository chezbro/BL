class TraitType < ActiveRecord::Base
	has_many :people, :through => :traits
end
