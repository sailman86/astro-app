class Booking < ApplicationRecord
  belongs_to :astronaut
  belongs_to :user
end
