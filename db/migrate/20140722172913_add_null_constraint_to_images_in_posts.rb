class AddNullConstraintToImagesInPosts < ActiveRecord::Migration
  def change
    change_column :posts, :url, :string, default: "", null: false
  end
end
