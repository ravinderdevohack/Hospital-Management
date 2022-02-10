class UpdateUsers < ActiveRecord::Migration[7.0]
  def change
#     add_column :users, :name, :string
#     add_column :users, :phone_number, :string
    add_column :users, :avatar, :string
    add_column :users, :user_type, :integer, null:false, default: 0
    add_column :users, :display, :integer, null:false, default: 1
    add_column :users, :provider, :string, limit:50, null:false, default: ''
    add_column :users, :uid, :string, limit:500, null:false, default: ''
  end
end
