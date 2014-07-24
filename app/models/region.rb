class Region < ActiveRecord::Base
  has_many :categories

  validates :name, uniqueness: true, presence: true, format: { with: /\A[a-zA-Z0-9 ]*\z/ }

  def to_param
    to_slug
  end

  def self.find_by_param(input)
    find(input.split("-")[-1])
  end

  private

  def to_slug
    name.gsub(/[^\w\d -]/, "") << "-"+ id.to_s
  end
end
