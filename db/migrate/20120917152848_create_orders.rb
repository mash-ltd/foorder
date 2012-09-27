class CreateOrders < ActiveRecord::Migration
  def change
  	
    create_table :orders do |t|
      t.integer :restaurant_id
      t.string :order_status

      t.timestamps
    end
  end
end
