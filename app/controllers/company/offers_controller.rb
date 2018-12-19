class Company::OffersController < ApplicationController
  skip_before_action :authenticate_jobseeker!

  def index
    @jobs = Offer.where(company_id: current_company.id, job: true)
    @formations = Offer.where(company_id: current_company.id, job: false)
  end

  def show
    @offer = Offer.find(params[:id])
    @candidacies = Candidacy.where(offer_id: @offer)
  end

  def new
    @offer = Offer.new
  end

  def create

  end
end
