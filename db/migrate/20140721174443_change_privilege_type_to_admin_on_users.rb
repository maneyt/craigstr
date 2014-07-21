class ChangePrivilegeTypeToAdminOnUsers < ActiveRecord::Migration
  def change
    remove_column :users, :privilege_type
    add_column :users, :admin, :boolean, null: false, default: false
  end
end
