class UsersController < ApplicationController
  before_action :set_users, only: [:edit, :update, :destroy, :show]
  
   def index
     @users = User.all
   end

   def new
     @user = User.new
   end

   def show
   end

   def create
    @user=User.create(user_params)
     redirect_to user_path(@user)
   end

   def edit
   end

   def update
     @user.update(user_params)
     redirect_to user_path(@user)
   end

   def delete
     @user.destroy
     redirect_to user_path
   end

   private

   def set_users
     @user = User.find(params[:id])
   end

   def user_params
     params.require(:user).permit!
   end


end
