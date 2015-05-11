class ApplicationController < ActionController::Base
  
  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :firstname << :lastname 
  end

  def check_if_admin
    redirect_to new_user_session_path, alert: t('insufficient_permissions') if
    current_user.present? and not current_user.admin?
  end

end
