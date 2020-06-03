class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :mail_address
      t.string :password
      t.datetime :last_login_date
      t.string :login_check

      t.timestamps
    end
  end
end
