class AddSearchToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :search_cache, :string, null: false
  end
end
