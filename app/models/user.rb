class User < ActiveRecord::Base
  has_many :posts
  has_many :post_responses, through: :posts

  validates :email, uniqueness: true

  def can_delete?(post)
    admin? || current_users_post?(post)
  end

  private

  def current_users_post?(post)
    id == post.user_id
  end
end
