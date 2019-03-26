class UsersController < ApplicationController
  before_action :set_users, only: [:edit, :update, :destroy, :show, :profile]
  skip_before_action :require_login, only: [:show, :index, :search, :new, :create]

   def index
     @users = User.all
   end

   def new
     @user = User.new
   end

   def search
     @user = User.search(params[:search])
   end

   def profile
     render 'profile'
   end

   def create
    user=User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}/profile"
    else
      flash[:message] = user.errors.full_messages
      redirect_to new_user_path
    end
   end

   def update
     @user.update(user_params)
     redirect_to @user
   end

   def delete
     @user.destroy
     redirect_to users_path
   end

   private

   def set_users
     @user = User.find(params[:id])
   end

   def user_params
     params.require(:user).permit!
   end


end
