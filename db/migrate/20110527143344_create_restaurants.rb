class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.text :address
      t.integer :phone
      t.integer :minimum_charge
      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
