class TeachersController < ApplicationController
 
  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
    @teacher.events.to_json { render :show }
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
      redirect_to root_path
    end
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
    params.require(:teacher).permit(:firstname, :lastname, :email, :address, :phone, :school_id, :avatar)
  end
end
