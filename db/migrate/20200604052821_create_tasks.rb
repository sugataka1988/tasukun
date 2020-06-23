class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :user_id, null: false, unique: true
      t.datetime :reception_date,null: false
      t.text :task_title, null: false

      t.timestamps
    end
  end
end
