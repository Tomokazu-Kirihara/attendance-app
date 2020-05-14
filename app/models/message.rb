class Message < ApplicationRecord
  belongs_to :user

  validates :dayname, presence: true
end
