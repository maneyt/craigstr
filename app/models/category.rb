class Category < ActiveRecord::Base
  belongs_to :region
  has_many :posts

  validates :title, presence: true
  validates :region_id, presence: true

  def region_and_title
    region.name + " | " + title 
  end
end
