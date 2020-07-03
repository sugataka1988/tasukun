class TaskContent < ApplicationRecord
    validates :task_content, {presence: true}
    validates :desired_completion_date, {presence: true}
end
