class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :astronauts, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
