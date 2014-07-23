class PostResponse < ActiveRecord::Base
  belongs_to :recipient, class_name: "User"
  belongs_to :post
end
