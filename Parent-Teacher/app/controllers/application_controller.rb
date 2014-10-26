class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def require_login
    if !current_user && !admin_user
      flash[:alert] = "You must log in."
      redirect_to new_session_path
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def admin_user
    @admin_user ||= School.find_by(id: session[:school_id]) if session[:school_id]
  end

  def authorize
    unless admin_user
      flash[:error] = 'You have to be an admin to access this page.'
      redirect_to :root
    end
    
  end

  helper_method :current_user, :admin_user, :authorize

end
