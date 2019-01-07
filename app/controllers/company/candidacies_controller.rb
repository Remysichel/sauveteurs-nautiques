class Company::CandidaciesController < ApplicationController
  skip_before_action :authenticate_jobseeker!

  def show
    @candidacy = Candidacy.find(params[:id])
  end
end
