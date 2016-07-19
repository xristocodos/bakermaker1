class UserMailer < ApplicationMailer
  default from: 'bakermaker@perolike.net'

  def welcome_email(user)
    @user = user
    @url  = 'http://bakermaker.net/login'
    mail(to: @user.email, subject: 'Welcome to BakerMaker, homie')
  end

end
