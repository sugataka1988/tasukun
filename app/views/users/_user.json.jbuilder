json.extract! user, :id, :user_name, :mail_address, :password, :last_login_date, :login_check, :created_at, :updated_at
json.url user_url(user, format: :json)
