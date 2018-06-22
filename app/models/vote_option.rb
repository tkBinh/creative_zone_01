class VoteOption < ApplicationRecord
  belongs_to :vote
  has_many :user_vote_choices
end
