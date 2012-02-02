class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  
  protected 
  
  def authorize
      unless User.find_by_id(session[:user_id])
        flash[:notice] = "Please log in" 
        redirect_to login_path
      end 
  end
  
  private
  
  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
end
