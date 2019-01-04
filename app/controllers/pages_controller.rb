class PagesController < ApplicationController
  skip_before_action :authenticate_jobseeker!, only: [:home]
  skip_before_action :authenticate_company!, only: [:home]

  def home
    @jobs = Offer.where(job: true)
    @formations = Offer.where(job: false)
  end
end
