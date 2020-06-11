class Task < ApplicationRecord
    validates :user_id, {presence: true}
    validates :reception_date, {presence: true}
    validates :task_content, {presence: true}
    validates :number_of_requests, {presence: true}
    validates :desired_completion_date, {presence: true}
end
