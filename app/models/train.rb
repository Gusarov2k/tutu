class Train < ActiveRecord::Base
	validates :number, presence: true

	belongs_to :current_station, class_name: 'RailwayStation'
end