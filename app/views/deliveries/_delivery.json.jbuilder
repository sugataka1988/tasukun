json.extract! delivery, :id, :shipping_method, :delivery_company_name, :delivery_carrier_phone_number, :delivery_company_address, :created_at, :updated_at
json.url delivery_url(delivery, format: :json)
