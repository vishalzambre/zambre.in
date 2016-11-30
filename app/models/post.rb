# Post model
class Post < ApplicationRecord
  belongs_to :category
  has_many :comments
  validates :title, presence: :true
  validates :content, presence: true

  scope :order_by_created_at, -> { order(created_at: :desc) }
  scope :published, -> { where(is_published: true) }
end
