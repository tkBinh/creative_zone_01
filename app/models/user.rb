class User < ApplicationRecord
  has_many :user_vote_choices
  has_many :posts
  has_many :notifications
  has_many :comments
  has_many :orders
  has_many :active_relationships,  class_name:  Relationship.name,
    foreign_key: :follower_id, dependent: :destroy
  has_many :passive_relationships, class_name:  Relationship.name,
   foreign_key: :followed_id, dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
end
