class PagesController < ApplicationController
  skip_before_action :authenticate_jobseeker!, only: [:home]
  skip_before_action :authenticate_company!, only: [:home]

  def home
  end
end
