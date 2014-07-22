class Post < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true
  paginates_per 10
  
  def mark_as_spam
    update(spam: true)
  end

  def self.spam
    where(spam: true)
  end

  def self.sort_descending
    order('created_at DESC')
  end
end
