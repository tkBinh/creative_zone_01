class Vote < ApplicationRecord
  belongs_to :product
  has_many :vote_options
end
