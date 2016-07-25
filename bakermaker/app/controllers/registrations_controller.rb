class RegistrationsController < ApplicationController
  def new
    @user = User.new
    #how to access invitee info from here?
    #add to view:
  end

  def create
    #check if incoming token in URL == invitee token
    #if ???params[:t]??? != invitee[:token]
    #  redirect_to register     #redirect to register with warning flash stating that invite is no longer valid

  end


  private

  def registration_params
    params.require(:user).permit(:token)
  end
end
