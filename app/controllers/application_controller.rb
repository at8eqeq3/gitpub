class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_action :require_login
  add_flash_types :success, :info, :warning, :danger
    
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def require_login
    unless current_user
      redirect_to root_url, danger: 'You have to log in or sign up' # TODO sign in/up url
    end
  end
end
