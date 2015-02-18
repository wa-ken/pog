class AddOmniauthToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :uid, :string, null: false, default: ""
    add_column :admins, :provider, :string, null: false, default: ""
    add_column :admins, :name, :string
  end
end
