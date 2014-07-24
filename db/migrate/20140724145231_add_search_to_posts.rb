class AddSearchToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :search_cache, :text, null: false, default: ""
  end
end
