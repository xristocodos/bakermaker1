class RegistrationsController < ApplicationController
  def new
    #todo: use token to get invited_by_id and set it
    #todo: use invited_by_id to get inviter's name and set it

    @user = User.new
    #how to access invitee info from here?
    #add to view:
    @token = params[:token]

    #info for populating the customized forum
    @invited = Invitee.find_by(token: @token)

    @inviter_id = @invited[:invited_by_id]
    @inviter = User.find_by(id: @inviter_id)
  end


  def create
    if @invited[token] == @token
      permit_registration == true
    end
    binding.pry

    if permit_registration
      ##save registration to db
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
