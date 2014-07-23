class User < ActiveRecord::Base
  has_many :posts

  validates :email, uniqueness: true

  def can_delete?(post)
    admin? || id == post.user_id
  end

  def post_responses
    PostResponse.where(post_id:  post_ids)
  end
end
