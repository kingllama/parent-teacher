class TeachersController < ApplicationController
  before_action :require_login
  before_action :authorize, only: [:index, :create, :destroy]
 
  def index
    @teachers = Teacher.all
  end

  def show
    if admin_user
      @teacher = Teacher.find(params[:id])
      @teacher.events.to_json { render :show }
    elsif current_user.type == "Teacher"
      @teacher = Teacher.find(current_user)
      @teacher.events.to_json { render :show }
    else
      redirect_to root_path, notice: "You can't access this page."
    end
  end

  def new
    @teacher = Teacher.new
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def create
    @teacher = Teacher.new(teacher_params) 
    default_password = admin_user.id * rand(10..40)
    @teacher.password = default_password

    if @teacher.save
      UserMailer.teacher_welcome(admin_user, @teacher, @teacher.password).deliver
      flash[:notice] = "Teacher successfully created!"
      redirect_to school_path(admin_user)
    else
      flash[:notice] = "There was an error and teacher was not created."
      render :new
    end
  end

  def update
    @teacher = Teacher.find(params[:id])
      if @teacher.update_attributes(teacher_params)
        redirect_to teacher_path(current_user)
      else 
        render :edit
      end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to root_path
  end


protected

  def teacher_params
    params.require(:teacher).permit(:firstname, :lastname, :email, :gender, :school_id, :phone, :avatar, :password)
  end
end

#, :address, :phone, :school_id, :avatar
