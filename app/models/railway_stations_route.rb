class RailwayStationsRoute < ActiveRecord::Base
	belongs_to :railway_station
	belongs_to :route

	# add validation on uniqueness row
	validates :railway_station_id, uniqueness: true

end