class Ticket < ActiveRecord::Base
	belongs_to 	:train
	belongs_to	:user
	belongs_to	:route
end