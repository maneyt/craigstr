class User < ActiveRecord::Base
  has_many :posts

  def admin?
    admin
  end
 
  def can_delete?(post)
    id == post.user_id
  end 
end
