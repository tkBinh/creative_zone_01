class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.float :price, default: 0
      t.datetime :expired
      t.text :description
      t.integer :status, default: 0
      t.string :image_vote
      t.string :image_sell
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
