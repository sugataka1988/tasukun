class User < ApplicationRecord
    validates :user_name, {presence: true}
    validates :mail_address, {presence: true}
    validates :password, {presence: true, length: {minimum: 6 ,maximum: 12}}
    
end
