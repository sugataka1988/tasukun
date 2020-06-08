class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.string :shipping_method, null: false
      t.string :delivery_company_name, null: false
      t.integer :delivery_carrier_phone_number, null: false
      t.string :delivery_company_address, null: false

      t.timestamps
    end
  end
end
