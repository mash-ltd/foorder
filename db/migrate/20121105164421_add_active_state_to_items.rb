class AddActiveStateToItems < ActiveRecord::Migration
  def change
    add_column :items, :active_state, :boolean, default: true
  end
end
