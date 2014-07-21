class Category < ActiveRecord::Base
  belongs_to :region
  validates :title, presence: true
end
