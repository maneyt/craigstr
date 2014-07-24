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
    [clean_name, id.to_s].join("-")
  end

  def clean_name
    name.gsub(/[^\w\d -]/, "")
  end
end
