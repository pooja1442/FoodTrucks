class ApplicationController < ActionController::Base
  add_flash_types :danger , :info , :warning , :success
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name,:phone_number, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name,:last_name,:phone_number,:birth_date , :time_zone, :email, :password, :current_password , :password_confirmation , :feature_image])
  end 
end
