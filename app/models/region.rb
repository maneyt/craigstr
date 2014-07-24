class Region < ActiveRecord::Base
  has_many :categories

  validates :name, uniqueness: true, presence: true

  def to_param
    name
  end
end
