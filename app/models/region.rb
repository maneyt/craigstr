class Region < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :categories

  validates :name, uniqueness: true, presence: true
end
