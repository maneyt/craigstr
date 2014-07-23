class User < ActiveRecord::Base
  has_many :posts
  has_many :post_responses, foreign_key: :recipient_id

  validates :email, uniqueness: true

  def can_delete?(post)
    admin? || id == post.user_id
  end 
end
