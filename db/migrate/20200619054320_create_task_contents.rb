class CreateTaskContents < ActiveRecord::Migration[6.0]
  def change
    create_table :task_contents do |t|
      t.text :task_content,null: false
      t.datetime :desired_completion_date,null: false

      t.timestamps
    end
  end
end
