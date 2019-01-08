class OffersController < ApplicationController
  skip_before_action :authenticate_jobseeker!, only: [:index, :show]
  skip_before_action :authenticate_company!, only: [:index, :show]

  def index
    if params[:query].present?
      @results = Offer.search_offers(params[:query])
    else
      @jobs = Offer.where(job: true)
      @formations = Offer.where(job: false)
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
