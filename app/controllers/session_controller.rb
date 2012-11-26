class SessionController < ApplicationController
  def new

  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password]) #logged in (if user and password match, log in)
      session[:name] = user.name
      session[:id] = user[:id]
      redirect_to user
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to users_path
  end

end