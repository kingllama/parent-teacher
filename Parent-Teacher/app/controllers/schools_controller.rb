class SchoolsController < ApplicationController
   def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
  end

  def edit
    @school = School.find(params[:id])
  end

  def create
    @school = School.new(school_params)

# decide where we want to redirect once a class room as been saved!
    # if @school.save
      # redirect_to somewhere
    # else
      # render :edit
    # end

  end

  def update
    @school = School.find(params[:id])
      # if @school.update_attributes(school_params)
      #   redirect_to somewhere
      # else 
      #   render :edit
      # end
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
    # redirect_to somewhere
  end


protected

  def school_params
# do we need to add timestamps?!?!!
    params.require(:school).permit(:name)
  end
end
