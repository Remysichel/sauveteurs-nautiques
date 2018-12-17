class OffersController < ApplicationController
  skip_before_action :authenticate_jobseeker!, only: [:index, :show]
  skip_before_action :authenticate_company!, only: [:index, :show]
end
