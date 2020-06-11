class Delivery < ApplicationRecord
  validates :shipping_method, {presence: true}
  validates :delivery_company_name, {presence: true}
  validates :delivery_carrier_phone_number, {presence: true}
  validates :delivery_company_address, {presence: true}
end
