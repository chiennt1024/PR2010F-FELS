class ApplicationController < ActionController::Base
	 # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pagy::Backend
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.root_url, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end
  
  def configure_permitted_parameters
  	added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
  	devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  	devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end