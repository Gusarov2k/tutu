class RailwayStationsRoute < ActiveRecord::Base
	belongs_to :railway_station
	belongs_to :route

	# add validation on uniqueness row
	# add scope is validate only selected column
	validates :railway_station_id, uniqueness: { scope: :route_id }

end