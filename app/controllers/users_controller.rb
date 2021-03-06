class UsersController < ApplicationController
  before_action :set_users, only: [:edit, :update, :destroy, :profile, :show]
  skip_before_action :require_login, only: [:show, :index, :search, :new, :create]

  def index
    @users = User.order('created_at DESC').paginate(:page => params[:page], :per_page => 4)
  end

  def new
    @user = User.new
  end

  def edit
    if current_user.id == @user.id
      render :edit
    else
      flash[:message] = 'Unauthorized Action'
      redirect_to "/users/#{@user.id}/profile"
    end
  end

  def search
    @user = User.search(params[:search])
  end

  def profile
    @relationship = current_user.active_relationships.where(followed_id: @user.id).first
    render :profile
  end

  def create
    user=User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}/profile"
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def update
    @user.update(user_params)
    redirect_to "/users/#{@user.id}/profile"
  end

  def destroy
    @user.destroy
    session.clear
    redirect_to '/login'
  end

  private

  def set_users
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit!
  end

end
