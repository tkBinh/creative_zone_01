class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.datetime :expires_at
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
