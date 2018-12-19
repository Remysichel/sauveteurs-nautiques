class ApplicationController < ActionController::Base
  before_action :authenticate_jobseeker!
  before_action :authenticate_company!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :genre, :phone_number, :profession, :name, :sector, :description, :siret])
  end
end
