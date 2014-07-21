class User < ActiveRecord::Base
<<<<<<< HEAD
  def admin?
    admin
  end
=======
  has_many :posts
>>>>>>> Users can add posts.
end
