class SessionsController < ApplicationController
  skip_before_action :authenticate, only: [:new]
  
  def new
    @user = User.new  #sets current user var to newly created blank user
  end

  def create
    binding.pry
    # this is where the login stuff goes for officially creating a sesh.

  end

  def destroy
  end
end
