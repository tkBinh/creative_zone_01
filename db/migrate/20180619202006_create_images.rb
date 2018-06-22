class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image
      t.integer :imageable_id
      t.integer :imageable_type
      t.boolean :banner, default: false

      t.timestamps
    end
  end
end
