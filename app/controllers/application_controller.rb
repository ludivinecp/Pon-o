class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  require 'carrierwave/orm/activerecord'
  protect_from_forgery with: :exception

  #facebook auth
  def new_session_path(scope)
    new_user_session_path
  end

before_action :store_location

def store_location
  # store last url as long as it isn't a /users path
  session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
end

def after_sign_in_path_for(resource)
  session[:previous_url] || root_path
end


  # before_action :configure_devise_permitted_parameters, if: :devise_controller?
  # def authenticate_admin!
  #   unless !!current_user.admin #unless current user is an admin redirect to root path
  #     redirect_to root_path, alert: "Accès refusé"
  #   end
  # end

  # def authenticate_centre!
  #   unless !!current_user.centre
  #     redirect_to root_path, alert: "Accès refusé"
  #   end
  # end

  # def authenticate_rider!
  #   unless !!current_user.rider
  #     redirect_to root_path, alert: "Accès refusé"
  #   end
  # end

  #  def rider?
  # # renvoie true quand admin est false ET centre est false
  # admin && centre
  # end

  # def centre?
  # # renvoie true quand admin est false ET centre est true
  # admin && !centre
  # end




  private
    def check_admin_logged_in!
      redirect_to root_path unless !!current_user.admin
    end

    def check_rider_or_admin_logged_in! # if admin is not logged in, user must be logged in
      redirect_to root_path unless !!current_user.rider or !!current_user.admin
    end

    def check_centre_or_admin_logged_in! # if admin is not logged in, user must be logged in
      redirect_to root_path unless !!current_user.centre or !!current_user.admin
    end

    # def check_centre_or_admin_logged_in! # if admin is not logged in, user must be logged in
    #   if !current_user.admin?
    #     authenticate_centre!
    #   end   
    # end
  
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
