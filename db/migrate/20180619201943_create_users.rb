class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :address
      t.string :avatar
      t.string :cover_photo
      t.text :about_me

      t.timestamps
    end
  end
end
