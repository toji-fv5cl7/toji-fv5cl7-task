class Task2 < ApplicationRecord
validates :title,  presence: true
validates :body,  presence: true
end
