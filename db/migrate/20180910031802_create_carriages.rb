class CreateCarriages < ActiveRecord::Migration
  def change
    create_table :carriages do |t|
    	t.boolean		:type_carriage, default: false
    	t.integer		:quant_up_seat
    	t.integer		:quant_down_seat
    end
  end
end
