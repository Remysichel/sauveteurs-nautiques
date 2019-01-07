class CandidaciesController < ApplicationController
  skip_before_action :authenticate_company!

  def index
    @candidacies = Candidacy.where(jobseeker_id: current_jobseeker.id)
  end

  def show
    @candidacy = Candidacy.find(params[:id])
  end

  def create
    @candidacy = Candidacy.new(candidacy_params)
    @candidacy.save
    flash[:notice] = "Candidature envoyée !"
    redirect_to candidacies_path
  end

  private

  def candidacy_params
    params.permit(:offer_id, :jobseeker_id)
  end
end
