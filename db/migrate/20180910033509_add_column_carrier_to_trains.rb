class AddColumnCarrierToTrains < ActiveRecord::Migration
  def change
  	add_column	:trains, :carriage_id, :integer
  end
end
