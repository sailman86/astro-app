class Astronaut < ApplicationRecord
  belongs_to :user

  validates :name, :bio, :nationality, :time_slot, presence: true
end
