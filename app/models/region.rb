class Region < ActiveRecord::Base
  has_many :categories

  validates :name, uniqueness: true, presence: true, format: { with: /\A[a-zA-Z0-9 ]*\z/ }

  def to_param
    name
  end
end
