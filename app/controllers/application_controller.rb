class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer_permit(sign_up, keys: [:name, :nickname, :gender, :age, :management, :deleted_at])
  end
end
