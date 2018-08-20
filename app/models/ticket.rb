class Ticket < ActiveRecord::Base
	has_many :tickets_users
	has_many :users through: :tickets_users
end
