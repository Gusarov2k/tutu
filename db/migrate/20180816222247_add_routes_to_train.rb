class AddRoutesToTrain < ActiveRecord::Migration
  def change
  	add_belongs_to :trains, :current_route
  end
end
