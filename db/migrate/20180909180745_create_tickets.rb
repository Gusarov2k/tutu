class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
    	t.integer		:train_id
    	t.integer		:route_id
    	t.integer		:user_id

    	t.timestamps
    end
  end
end
