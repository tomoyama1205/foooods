class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def after_sign_out_path_for(resouce)
    root_path
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, key: [:nickname])
  end
end