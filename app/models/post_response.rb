class PostResponse < ActiveRecord::Base
  belongs_to :post

  validates :message, presence: true
  validates :post_id, presence: true
end
