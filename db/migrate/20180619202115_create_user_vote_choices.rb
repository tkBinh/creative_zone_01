class CreateUserVoteChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :user_vote_choices do |t|
      t.references :vote_option, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
