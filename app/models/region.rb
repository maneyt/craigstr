class Region < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  geocoded_by :name
  after_validation :geocode

  has_many :categories

  validates :name, uniqueness: true, presence: true
end
