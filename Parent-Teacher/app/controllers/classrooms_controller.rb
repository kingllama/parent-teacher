class ClassroomsController < ApplicationController

  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find(params[:id])
    @classroom_students = @classroom.students
    @students = Student.all - @classroom_students
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
    puts "Updating classroom"
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
    elsif @classroom.update_attributes(classroom_params)
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
    params.require(:classroom).permit(:subject, :grade, :teacher_id)
  end

  


end
