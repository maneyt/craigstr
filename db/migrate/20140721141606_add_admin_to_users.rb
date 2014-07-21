class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :privilege_type, :string, null: false, default: "user"
  end
end
