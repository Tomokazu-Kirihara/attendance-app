class Day < ApplicationRecord
  has_many :day_users
  has_many :users, through: :day_users
  
  validates :dayname, presence: true, uniqueness: true
end
