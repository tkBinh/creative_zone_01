class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :status,  default: 0
      t.string :phone_number
      t.string :full_name
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.integer :charge_transport
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
