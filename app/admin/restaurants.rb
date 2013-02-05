ActiveAdmin.register Restaurant do

  config.sort_order = "name_asc"
  config.per_page = 10

  index do
    selectable_column
    column :name
    column :description
    column :address
    column :phone
    column :manager
    default_actions
  end

  filter :name
  filter :phone
  filter :manager

  # form do |f|
  #   f.inputs "Admin Details" do
  #     f.input :email
  #     f.input :password
  #     f.input :password_confirmation
  #   end
  #   f.buttons
  # end
end