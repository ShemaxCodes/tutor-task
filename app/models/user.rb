class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {student: 1, teacher: 2, admin: 3}
  has_many :user_assignments
  has_many :assigments, through: :user_assignments
end
