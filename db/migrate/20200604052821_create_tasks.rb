class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id, null: false, unique: true
      t.datetime :reception_date,null: false
      t.text :task_content, null: false
      t.integer :number_of_requests, null: false
      t.datetime :desired_completion_date, null: false

      t.timestamps
    end
  end
end
