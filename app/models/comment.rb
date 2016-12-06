# Comment model
class Comment < ApplicationRecord
  belongs_to :posts
end
