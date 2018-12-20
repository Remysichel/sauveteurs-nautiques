class Company::OffersController < ApplicationController
  skip_before_action :authenticate_jobseeker!

  def index
    @jobs = Offer.where(company_id: current_company.id, job: true)
    @formations = Offer.where(company_id: current_company.id, job: false)
    @offer = Offer.new
  end

  def show
    @offer = Offer.find(params[:id])
    @candidacies = Candidacy.where(offer_id: @offer)
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.company_id = current_company.id
    @offer.save
    redirect_to edit_company_offer_path(@offer)
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    redirect_to company_offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:job,
                                  :required_profile,
                                  :date_start,
                                  :formation_name,
                                  :formation_description,
                                  :degree,
                                  :price,
                                  :job_name,
                                  :job_description,
                                  :contract)
  end
end
