class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  require 'carrierwave/orm/activerecord'
  protect_from_forgery with: :exception

  def new_session_path(scope)
    new_user_session_path
  end

  # before_action :configure_devise_permitted_parameters, if: :devise_controller?

  # protected

  # def configure_devise_permitted_parameters
  #   registration_params = [:nickname, :email, :password, :password_confirmation]

  #   if params[:action] == 'update'
  #     devise_parameter_sanitizer.for(:account_update) { 
  #       |u| u.permit(registration_params << :current_password)
  #     }
  #   elsif params[:action] == 'create'
  #     devise_parameter_sanitizer.for(:sign_up) { 
  #       |u| u.permit(registration_params) 
  #     }
  #   end
  # end
end
