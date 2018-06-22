class Product < ApplicationRecord
  belongs_to :category
  has_many :votes
  has_many :images, as: :imageable
  has_many :comments, as: :commentable
end
