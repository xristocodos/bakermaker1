class RegistrationsController < ApplicationController
  def new
    @user = User.new
    #how to access invitee info from here?
    #add to view:
    @token = params[:token]
  end

  def create
    binding.pry
    if invitee[token] == @token
      permit_registration
    end
    #check if incoming token in URL == invitee token
    #if ???params[:t]??? != invitee[:token]
    #  redirect_to register     #redirect to register with warning flash stating that invite is no longer valid

  end


  private

  def registration_params
    params.require(:user).permit(:token)
  end
end
