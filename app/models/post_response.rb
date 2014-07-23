class PostResponse < ActiveRecord::Base
  belongs_to :post

  validates :message, presence: true
  validates :post, presence: true
end
