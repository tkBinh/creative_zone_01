class CreateVoteOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :vote_options do |t|
      t.string :title
      t.integer :total_vote
      t.references :vote, foreign_key: true

      t.timestamps
    end
  end
end
