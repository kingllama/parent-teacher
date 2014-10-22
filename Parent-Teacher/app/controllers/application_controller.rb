class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def restrict_access
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

  def teacher_user
    @teacher_user ||= Teacher.find(id: session[:teacher_id]) if session[:teacher_id] 
  end

  def parent_user 
    @parent_user ||= Parent.find(id: session[:parent_id]) if session[:parent_id]   
  end

  def authorize
    unless admin_user
      flash[:error] = 'You have to be an admin to access this page.'
      redirect_to :root
    end
    
  end

  helper_method :current_user, :admin_user, :authorize, :teacher_user, :parent_user

end
