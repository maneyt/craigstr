class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :post_responses
  validates :title, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates_length_of :title, minimum: 10, maximum: 60
  validates_length_of :body, minimum: 10, maximum: 750
  paginates_per 10
  
  def mark_as_spam
    update(spam: true)
  end

  def self.spam
    where(spam: true)
  end

  def self.recent_first
    order('created_at DESC')
  end
end
