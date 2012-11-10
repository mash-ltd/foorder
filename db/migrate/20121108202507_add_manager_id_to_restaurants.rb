class AddManagerIdToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :manager_id, :integer
  end
end
