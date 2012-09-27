class CreateItems < ActiveRecord::Migration
  def self.up
  	create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2, :default => 0
      t.timestamps
  	end
  end

  def self.down
  	drop_table :items
  end
end
