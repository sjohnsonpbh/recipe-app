class ApplicationController < ActionController::Base
  def require_user 
    # if the user is a guest, then redirect to login
    if guest? 
      flash[:notice] = "You must login first."
      redirect_to login_path
    end
  end

  def already_signed_in? 
    if !guest? 
      flash[:notice] = "You are already signed in."
      redirect_to recipes_path
    end
  end

  def guest? 
    !helpers.logged_in?
  end
end
