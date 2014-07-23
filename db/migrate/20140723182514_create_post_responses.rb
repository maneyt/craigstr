class CreatePostResponses < ActiveRecord::Migration
  def change
    create_table :post_responses do |t|
      t.text :message, null: false
      t.belongs_to :recipient, index: true, null: false
      t.belongs_to :post, index: true, null: false
      t.timestamps null: false
    end
  end
end
