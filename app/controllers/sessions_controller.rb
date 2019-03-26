class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if users
      session[:user_id] = user.id
      redirect_to users_path
    else
      redirect_to new_user_path
  end
end
