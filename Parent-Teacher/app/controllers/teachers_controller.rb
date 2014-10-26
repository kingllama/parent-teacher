class TeachersController < ApplicationController
  before_action :require_login
  before_action :authorize, only: [:index, :create, :update, :destroy]
 
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

# decide where we want to redirect once a class room as been saved!
    # if @teacher.save
      # redirect_to somewhere
    # else
      # render :edit
    # end
    # school = School.find(session[:school_id])
    # default_password = school.id * rand(10..40)
    # UserMailer.teacher_welcome(school, @teacher, default_password).deliver

  end

  def update
    @teacher = Teacher.find(params[:id])
      # if @teacher.update_attributes(teacher_params)
      #   redirect_to somewhere
      # else 
      #   render :edit
      # end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to root_path
  end


protected

  def teacher_params
# do we need to add timestamps?!?!!
    params.require(:teacher).permit(:firstname, :lastname, :email, :gender)
  end
end
