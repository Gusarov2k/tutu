class CreateStationsRoutes < ActiveRecord::Migration
  def change
    create_table :stations_routes do |t|
    	t.integer 	:station_id
    	t.ineteger	:route_id
    end
  end
end
