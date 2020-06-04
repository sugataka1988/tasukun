class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.string :shipping_method
      t.string :delivery_company_name
      t.integer :delivery_carrier_phone_number
      t.string :delivery_company_address

      t.timestamps
    end
  end
end
