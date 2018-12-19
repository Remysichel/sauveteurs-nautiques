class Company::OffersController < ApplicationController

  def index
    @formation = Offer.where(fomation: true)
  end

  def new
    @offer = Offer.new
    @company = current_company
  end

  def create

  end
end
