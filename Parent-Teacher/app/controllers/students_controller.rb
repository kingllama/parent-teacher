class StudentsController < ApplicationController


  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    render "show"
  end

  def new #Methinks we don't need this anymore.
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)

# decide where we want to redirect once a class room as been saved!
    # if @student.save
      # redirect_to somewhere
    # else
      # render :edit
    # end

  end

  def update
    @student = Student.find(params[:id])
      # if @student.update_attributes(student_params)
      #   redirect_to somewhere
      # else 
      #   render :edit
      # end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    # redirect_to somewhere
  end


protected

  def student_params
    params.require(:student).permit(:firstname, :lastname, :gender)
  end
end
