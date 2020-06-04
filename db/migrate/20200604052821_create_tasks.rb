class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.datetime :reception_date
      t.text :task_content
      t.integer :number_of_requests
      t.datetime :desired_completion_date

      t.timestamps
    end
  end
end
