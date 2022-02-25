class Astronaut < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title_and_synopsis,
    against: [ :name],
    using: {
      tsearch: { prefix: true }
    }
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :name, :bio, :nationality, presence: true
end
