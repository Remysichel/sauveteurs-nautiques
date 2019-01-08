class Offer < ApplicationRecord
  belongs_to :company
  has_many :candidacies, dependent: :destroy

  include PgSearch
  pg_search_scope :search_offers,
    against: [:formation_name, :formation_description, :job_name, :job_description],
    using: {
      tsearch: { prefix: true }
    }
end
