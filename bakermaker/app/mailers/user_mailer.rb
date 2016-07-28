class UserMailer < ApplicationMailer
  default from: 'bak3rmak3r@gmail.com'

  def welcome_email(invitee)
    @invitee = invitee
    @url  = 'http://localhost:3000'
    @registration_url = @url + "/register/" + @invitee[:token]
    @referral_user = User.find_by( id: @invitee[:invited_by_id] )
    mail(to: @invitee.email, subject: 'Welcome to BakerMaker, homie')
  end

end
