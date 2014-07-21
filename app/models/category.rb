class Category < ActiveRecord::Base
  belongs_to :region

  validates :title, presence: true
  validates :region_id, presence: true
end
