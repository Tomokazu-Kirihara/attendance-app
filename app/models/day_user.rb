class DayUser < ApplicationRecord
  belongs_to :day
  belongs_to :user
end
