class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}/profile"
    else
      flash[:message] = 'Incorrect Login'
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
