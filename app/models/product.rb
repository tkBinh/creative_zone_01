class Product < ApplicationRecord
  belongs_to :category
  has_many :votes
  has_many :images, as: :imageable
  has_many :comments, as: :commentable
  mount_uploader :image_vote, AvatarUploader

  validates :title, presence: true, length: {maximum:
    Settings.length_max.product_title,
    uniqueness: true}
  validates :description, presence: true, length: {minimum:
    Settings.length_min.product_description}
  validates :image_vote, presence: true
end
