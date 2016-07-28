class InvitationsController < ApplicationController
  def new #for staging invite creation/form
    @invitee = Invitee.new
  end


  def create #for creation of invitation in dv
    #this feels non-DRY and also messy af

    @invitee = Invitee.new(invitation_params)
    # @invitee[:name] = params[:invitee][:name]
    # @invitee[:email] = params[:invitee][:email]

    @invitee[:invited_by_id] = session[:id]
    @invitee[:token] = generate_unique_secure_token

    #not sure if this goes here or if it goes in the mailer
    #@registration_url = "http://localhost:3000/register/" + @invitee[:token]

    #HERES WHERE WE INVOKE ACTIONMAILER
    respond_to do |format|
      if @invitee.save

        # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@invitee).deliver_now
        flash[:notice] = "Invite was successfully sent!"
        # return invite_url
        format.html { redirect_to(invite_url) }
        # format.json { render json: @invitee, status: :created, location: @invitee }
      else
        flash[:warning] = "Invite was not successfully sent!"
        # return invite_url
        format.html { render action: 'new' }
        # format.json { render json: @invitee.errors, status: :unprocessable_entity }
      end #end else
    end #end respond_to


    @invitee.save

#    redirect_to invitee_index_path

  end

  def index
    @current_user_invitations = []
    # for all invitees, where invited_by_id == current_user[:id]
    import_invitations
  end

  def destroy #for revoking/cancelling invite
  end



  private

  def import_invitations
    invitations = Invitee.all
    invitations.all.each do |inv|
      if inv[:invited_by_id] == current_user[:id]
        @current_user_invitations << inv
      end
    end
  end


  def invitation_params
    params.require(:invitee).permit(:email, :name)
  end


  def generate_unique_secure_token
    SecureRandom.base58(24)
  end

end
