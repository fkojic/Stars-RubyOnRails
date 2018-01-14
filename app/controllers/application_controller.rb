class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :first_name, :last_name, :profile_picture, :date_of_birthday])
  end

  private
  
    #def after_sign_in_path_for(resource)
     # if current_user.role_id == 2 
      #    "/users"
      #end
    #end
  
end
