ActiveAdmin.register User do
  permit_params :email, :role, :password, :password_confirmation, :first_name, :last_name

  index do
    selectable_column
    id_column
    column :full_name do |user|
      "#{user.first_name} #{user.last_name}"
    end
    column :email
    column :role
    column :status
    column :created_at
    actions
  end

  filter :email

  form do |f|
    f.inputs "User Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :role
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end