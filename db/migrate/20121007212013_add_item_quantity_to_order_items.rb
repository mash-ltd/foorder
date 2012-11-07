class AddItemQuantityToOrderItems < ActiveRecord::Migration
  def change
    add_column :order_items, :item_quantity, :integer
  end
end
