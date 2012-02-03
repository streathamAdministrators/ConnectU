class MailerController < ApplicationController
 before_filter :authorize
  # GET
  def index
   @addresse = ""
  end
  
  # POST
   def create
    @addresse = params[:addresse]
    @user = User.find_by_id(session[:user_id]) 
    UserMailer.welcome_email(@addresse, @user).deliver
    redirect_to users_path
  end
  
end
