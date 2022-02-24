class Astronaut < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title_and_synopsis,
    against: [ :name],
    using: {
      tsearch: { prefix: true }
    }
  belongs_to :user

  validates :name, :bio, :nationality, :time_slot, presence: true
end
