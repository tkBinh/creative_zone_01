class UserVoteChoice < ApplicationRecord
  belongs_to :vote_option
  belongs_to :user
end
