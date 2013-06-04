class GuestPost < ActiveRecord::Base
	belongs_to :user
	belongs_to :person


def post
	self.user.first_name
end
end
