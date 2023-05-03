class Task < ApplicationRecord
    # validates :title,presence :true, length: { minimum: 5, maximum: 100}
    belongs_to :user
end
