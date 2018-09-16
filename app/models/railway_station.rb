class RailwayStation < ActiveRecord::Base
	validates :title, presence: true

	has_many :trains
	has_many :railway_stations_routes
	has_many :routes, through: :railway_stations_routes

	def update_position(route, position)
		station_route = station_route(route)
		station_route.update(position: position) if station_route
	end

	def position_in(route)
		station_route(route).try(:position)
	end

	protected

	def station_route(route)
		# мемоизация ||= т.е. если если какой то метод уже загрузил данный объект то данный метод будет только его возвращать
		@station_route ||= railway_stations_routes.where(route: route).first
		
	end
end
