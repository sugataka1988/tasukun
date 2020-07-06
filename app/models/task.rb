class Task < ApplicationRecord
    validates :user_id, presence: true
    validates :reception_date, presence: true
    validates :task_title, presence: true

end
