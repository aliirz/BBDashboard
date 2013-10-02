class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource_or_scope)
  	'/dashboard/index'
  end

  
  def after_sign_up_path_for(resource_or_scope)
  	'/dashboard/index'
  end

    # Overwriting the sign_out redirect path method
    def after_sign_out_path_for(resource_or_scope)
    	root_path
    end
  # def sign_up_params
  # 	params.require(:user).permit(:email, :password, :username)
  # end
  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password) }
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password) }
  end
end
