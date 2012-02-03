class MailerController < ApplicationController

  # GET
  def index
   @addresse = ""
  end
  
  # POST
   def create
    @user = User.last

    UserMailer.welcome_email(@user).deliver
    redirect_to users_path
  end
  
end
