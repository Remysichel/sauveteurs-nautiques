class ApplicationController < ActionController::Base
  before_action :authenticate_jobseeker!
  before_action :authenticate_company!

end
