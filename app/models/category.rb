class Category < ApplicationRecord
  has_many :products
  has_many :posts

  validates :title, presence: true,
    length: {maximum: Settings.length_max.category_name},
    uniqueness: true
  validates :image, presence: true, uniqueness: true
  validates :banner, presence: true, uniqueness: true
end
