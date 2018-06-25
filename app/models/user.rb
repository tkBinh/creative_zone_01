class User < ApplicationRecord
  attr_accessor :remember_token

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

  before_save :downcase_email

  validates :name, presence: true, length: {maximum: Settings.length_max.name}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum:
    Settings.length_max.email},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}

  has_secure_password

  validates :password, presence: true, length: {minimum:
    Settings.length_min.password}, allow_nil: true

  class << self
    def digest string
      @cost = BCrypt::Engine.MIN_COST if ActiveModel::SecurePassword.min_cost
      @cost = BCrypt::Engine.cost
      BCrypt::Password.create string, cost: @cost
    end

    def new_token
      SecureRandom.urlsafe_base64
    end
  end

  def remember
    self.remember_token = User.new_token
    update_attribute :remember_digest, User.digest(remember_token)
  end

  def authenticated? attribute, token
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end

  def forget
    update_attribute :remember_digest, nil
  end

  private

  def downcase_email
    self.email = email.downcase
  end
end
