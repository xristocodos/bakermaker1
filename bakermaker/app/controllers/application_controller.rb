class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate

  def current_user
    # should return the user object who is logged in
  end

  def authenticate
    # if there is a current user, proceed
    # if there is NO current user, i.e. no one is logged in, DO NOT LET THEM GO TO THE PAGE
    # instead, redirect to the log in the page
    
  end
end
