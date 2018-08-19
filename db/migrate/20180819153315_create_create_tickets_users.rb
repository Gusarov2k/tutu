class CreateCreateTicketsUsers < ActiveRecord::Migration
  def change
    create_table :create_tickets_users do |t|

    	t.integer 	:ticket_id
    	t.integer		:user_id
    end
  end
end
