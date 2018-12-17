class Offer < ApplicationRecord
  belongs_to :company
  has_many :candidacies, dependent: :destroy
end
