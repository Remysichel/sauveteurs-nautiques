class Candidacy < ApplicationRecord
  belongs_to :jobseeker
  belongs_to :offer
end
