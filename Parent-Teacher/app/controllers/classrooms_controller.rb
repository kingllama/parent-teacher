class ClassroomsController < ApplicationController

  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find(params[:id])
    @classroom_students = @classroom.students
    @students = Student.all
  end

  def new
    @classroom = Classroom.new
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def create
    @classroom = Classroom.new(classroom_params)

    if @classroom.save
      redirect_to classrooms_path, notice: "#{@classroom.subject} was submitted successfully!"
    else
      render :new
    end
  end

  def update
    @classroom = Classroom.find(params[:id])
      # if @classroom.update_attributes(classroom_params)
      #   redirect_to somewhere
      # else 
      #   render :edit
      # end
  end

  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy
    redirect_to classrooms_path
  end


protected

  def classroom_params
    params.require(:classroom).permit(:subject, :grade, :teacher_id)
  end

  


end
