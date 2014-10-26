class SchoolsController < ApplicationController
  before_action :require_login
  before_action :authorize
  
  def index
    @schools = School.where(school_id: admin_user)
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
    
    if @school.save
      redirect_to root_path
    else
      render :edit
    end

  end

  def update
    @school = School.find(params[:id])
      if @school.update_attributes(school_params)
        redirect_to root_path
      else 
        render :edit
      end
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
  end


protected

  def school_params
    params.require(:school).permit(:name, :address, :email, :password, :password_confirmation)
  end
end
