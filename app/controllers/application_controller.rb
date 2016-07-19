  class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_user
  # before_action :admin_user

  def is_authenticated
    unless current_user
      flash[:danger] = "Credentials Invalid"
      redirect_to login_path
    end
  end

  def is_admin 
    unless current_user && current_user.admin
      flash[:danger] = 'Permission Denied'
      redirect_to root_path
    end
  end

  def is_student
    unless current_user && !current_user.admin
      flash[:danger] = 'Permission Denied'
      redirect_to root_path
    end
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

end
