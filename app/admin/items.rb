ActiveAdmin.register Item do
  
  config.sort_order = "active_state_desc"
  config.per_page = 10
  
  index download_links: false do
    selectable_column
    column :name
    column :description
    column :price
    column :restaurant
    column :active_state
    default_actions
  end
  
  filter :name
  filter :restaurant
  filter :active_state, label: "Active?", as: :select
  
  # form do |f|
  #   f.inputs "Admin Details" do
  #     f.input :email
  #     f.input :password
  #     f.input :password_confirmation
  #   end
  #   f.buttons
  # end
end