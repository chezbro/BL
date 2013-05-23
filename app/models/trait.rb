class Trait < ActiveRecord::Base
	belongs_to :person
	belongs_to :trait_type
end
