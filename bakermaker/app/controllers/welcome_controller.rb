class WelcomeController < ApplicationController
  def new
    if current_user #session[:id]  #should be if current_user!!
      #greeting
      redirect_to(home_path)  #redirects to welcome#show
    else
      redirect_to(login_path) #redirects to sessions#new
    end
  end

  def show
  end

end
