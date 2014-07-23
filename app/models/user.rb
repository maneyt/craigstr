class User < ActiveRecord::Base
  has_many :posts
  has_many :post_responses, through: :posts

  validates :email, uniqueness: true

  def can_delete?(post)
    admin? || id == post.user_id
  end
end
