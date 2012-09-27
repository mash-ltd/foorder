class CreateOrders < ActiveRecord::Migration
  def change
  	
    create_table :orders do |t|
      t.integer :restaurant_id
      t.string :order_status, default: "open"
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
