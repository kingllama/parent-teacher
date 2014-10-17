class ClassroomsController < ApplicationController

  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find(params[:id])
  end

  def new
    @classroom = Classroom.new
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def create
    @classroom = Classroom.new(classroom_params)

# decide where we want to redirect once a class room as been saved!
    # if @classroom.save
      # redirect_to somewhere
    # else
      # render :edit
    # end

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
    # redirect_to somewhere
  end


protected

  def classroom_params
    params.require(:classroom).permit(:subject, :grade)
  end

  


end
