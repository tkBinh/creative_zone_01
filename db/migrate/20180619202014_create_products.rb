class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.float :price
      t.datetime :end_buy
      t.text :description
      t.integer :status, default: 0
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
