class UserMailer < ActionMailer::Base
  default from: "gui.ness34000@gmail.com"
  
   def welcome_email(addresse, user)
    @addresse = addresse
    @url  = "http://localhost:3000/users/new"
    @user = user
    mail(:to => @addresse, :subject => "New to Connect U ?")
  end
end
