class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :day_users
  has_many :days, through: :day_users
  has_many :messages

  validates :name, format: {
    with: /\A[ぁ-んー－]+[\S]+\z/,
    message: "は、ひらがなで入力して下さい"
  },presence: true

end
