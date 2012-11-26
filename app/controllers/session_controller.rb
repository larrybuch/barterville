class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password]) #logged in (if user and password match, log in)
      session[:user_id] = user.id
      redirect_to users_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_path
  end

end