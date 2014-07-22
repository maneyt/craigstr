class ChangeDefaultValuePostImages < ActiveRecord::Migration
  def change
    change_column :posts, :url, :string, :default => ""
  end
end
