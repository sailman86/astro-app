class Astronaut < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :name, :bio, :nationality, :time_slot, presence: true
end
