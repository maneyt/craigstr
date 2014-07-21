class User < ActiveRecord::Base
  has_many :posts

  def admin?
    admin
  end
  
end
