class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :current_user
  before_action :require_login

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def require_login
    if !logged_in?
      redirect_to login_path
    end
  end

end
