class AddTrainsToRoute < ActiveRecord::Migration
  def change
  	add_belongs_to :routes, :current_train
  end
end
