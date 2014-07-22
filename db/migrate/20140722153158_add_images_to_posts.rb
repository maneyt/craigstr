class AddImagesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :url, :string, default: "", null: false
  end
end
