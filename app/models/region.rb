class Region < ActiveRecord::Base
  has_many :categories

  validates :name, uniqueness: true, presence: true

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
