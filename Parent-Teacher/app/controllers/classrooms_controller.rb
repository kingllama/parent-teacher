class ClassroomsController < ApplicationController
  before_action :require_login
  before_action :authorize, only: [:edit, :create, :update, :destroy]

  def index
    if admin_user
      @classrooms = Classroom.where(school_id: admin_user)
    else
      @classrooms = Classroom.where(user_id: current_user)
    end
  end

  def show
    @classroom = Classroom.find(params[:id])
    @students = Student.all - @classroom.students
    if @classroom.teacher
      @teacher = @classroom.teacher.full_name
    else
      @teacher = "None"
    end
  end

  def new
    @classroom = Classroom.new
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def create
    @classroom = Classroom.new(classroom_params)
    @classroom.teacher = Teacher.find(classroom_params[:user_id])

    if @classroom.save
      redirect_to classrooms_path, notice: "#{@classroom.subject} was submitted successfully!"
    else
      render :new
    end
  end

  def update
    @classroom = Classroom.find(params[:id])
    if params[:student_ids] || params[:ids_to_delete]
      # Add students to classroom
      if params[:student_ids]
        @classroom.students += Student.find(params[:student_ids])
      end

      #Remove students
      if params[:ids_to_delete]
        @classroom.students -= Student.find(params[:ids_to_delete])
      end
      @classroom.save
      redirect_to @classroom
      # Update Classroom info
    elsif @classroom.update_attributes(classroom_params)
      @classroom.teacher = Teacher.find(classroom_params[:teacher_id])
      @classroom.save
      redirect_to @classroom
    else
      render :edit
    end
  end

  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy
    redirect_to classrooms_path
  end


protected

  def classroom_params
    params.require(:classroom).permit(:subject, :grade, :user_id, :school_id)
  end

  


end
