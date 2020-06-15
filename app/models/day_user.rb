class DayUser < ApplicationRecord
  belongs_to :day, dependent: :destroy
  belongs_to :user
end