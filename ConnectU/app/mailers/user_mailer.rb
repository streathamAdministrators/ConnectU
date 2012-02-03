class UserMailer < ActionMailer::Base
  default from: "gui.ness34000@gmail.com"
  
   def welcome_email(user)
    @user = user
    @url  = "http://localhost:3000/users/new"
    mail(:to => user.mail, :subject => "New to Connect U ?")
  end
end
