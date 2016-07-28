class SessionsController < ApplicationController
  skip_before_action :authenticate, only: [:new, :create] #so new() doesn't expect you to be authenticated before authenticating, lol

  def new
    #typically does the following tasks:
    #  lookup user in db
    #  verify login creds (via authenticate)
    #  store that user's id in the sesh

    if current_user
      flash[:warning] = "You are already logged in"
      redirect_to '/'
    end

    @user = User.new  #sets current user var to newly created blank user
  end


  def create
    # already authenticated in application controllers 'before_action'

    # lookup name, get obj, get id from obj, save in session as user_id
    # session[:user_id] = params[:name].id #if i want to use user_id for the token, i do this right?
    # User.find_by(name: "Johnny").id

    # user = User.find_by(name: params[:user][:name]) ##DEBUG## NEEDS TO GET REQUIRE
    # binding.pry
    user = User.find_by(name: user_params[:name]) ##DEBUG## NEEDS TO GET REQUIRE


    if user == nil
      flash[:warning] = "Invalid credentials! Check your username!"
      redirect_to login_path
    elsif user.authenticate(user_params[:password])
      session[:id] = user.id
      redirect_to home_path
    end
    # session[:user_id] = User.find_by(name: params[:user][:name]).id

    if current_user
      # redirect_to root_path
      return root_url
    else
      # redirect_to login_path
      return login_url
    end



  end


  def destroy
    session.delete :id

  end


  private
    def user_params
      params.require(:user).permit(:name, :password)
    end

    # user = User.find_by(name: user_params[:name])
    # if user.authenticate(user_params[:password])
    #   session[:id] = user.id
    # end

end
