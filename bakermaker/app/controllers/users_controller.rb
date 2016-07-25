class UsersController < ApplicationController
  def new

  end

  def create
    # create the actual user acct
    @user = User.new(params[:user])

    respond_to do |format|
    if @user.save
      # Tell the UserMailer to send a welcome email after save
      UserMailer.welcome_email(@user).deliver_later

      format.html { redirect_to(@user, notice: 'User was successfully created.') }
      format.json { render json: @user, status: :created, location: @user }
    else
      format.html { render action: 'new' }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end

  end #end method 'create

  def destroy
    #delete my acct
  end #end method 'destroy'
end
