class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :mail_address, null: false
      t.string :password, null: false, unique: true
      t.datetime :last_login_date
      t.string :login_check

      t.timestamps 
    end
  end
end
