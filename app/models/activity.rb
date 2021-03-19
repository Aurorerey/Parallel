class Activity < ApplicationRecord
  validates :name, presence: true
  has_many :practices
  has_many :cabinets, through: :practices

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [:name],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
