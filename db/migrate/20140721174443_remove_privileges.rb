class RemovePrivileges < ActiveRecord::Migration
  def change
    remove_column :users, :privilege_type
  end
end
