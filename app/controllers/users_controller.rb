class UsersController < ApplicationController

   def index
     @users = User.all
   end

   def new
     @user = User.new
   end

   def show
    @user = User.find(params[:id])
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
     @user = User.find(params[:id])
     @user.destroy
     redirect_to user_path
   end

   private

  
   def user_params
     params.require(:user).permit!
   end


end
