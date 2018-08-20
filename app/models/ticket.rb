class Ticket < ActiveRecord::Base
	has_many :tickets_users
end
