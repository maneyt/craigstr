class User < ActiveRecord::Base
  has_many :posts
  has_many :post_responses, through: :posts

  validates :email, uniqueness: true

  def can_delete?(post)
    admin? || owns?(post)
  end

  private

  def owns?(post)
    id == post.user_id
  end
end
