class CandidaciesController < ApplicationController
  skip_before_action :authenticate_company!

  def index
    @candidacies = Candidacy.where(jobseeker_id: current_jobseeker.id)
  end

  def show
    @candidacy = Candidacy.find(params[:id])
  end
end
