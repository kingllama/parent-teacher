class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    school = School.find_by(email: params[:email])

    if user #&& user.authenticate(params[:password])
      session[:user_id] = user.id
      case user.type
        when "Parent"
          redirect_to parent_path(user)
        when "Teacher"
          redirect_to teacher_path(user)
        else
          redirect_to root_path, notice: "Unknown user type."
      end

    elsif school #&& school.authenticate(params[:password])
      session[:user_id] = school.id

    else
      flash.now[:alert] = "Log in failed."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Adios!"
  end

end
