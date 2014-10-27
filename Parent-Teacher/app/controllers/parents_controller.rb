class ParentsController < ApplicationController
before_action :require_login
before_action :authorize, only: [:index, :create, :update, :destroy]
  
  def index
    if admin_user
      @parents = Parent.where(school_id: admin_user)
    else
      redirect_to root_path, notice: "You can't access this page." 
    end
  end

  def show
    if admin_user
      @parent = Parent.find(params[:id])
    elsif current_user.type == "Parent"
      @parent = Parent.find(current_user)
    else
      redirect_to root_path, notice: "You can't access this page."   
    end
    
  end

  def new
    @parent = Parent.new
  end

  def edit
    @parent = Parent.find(params[:id])
  end

  def create
    @parent = Parent.new(parent_params)

# decide where we want to redirect once a class room as been saved!
    # if @parent.save
      # redirect_to somewhere
    # else
      # render :edit
    # end

  end

  def update
    @parent = Parent.find(params[:id])
      if @parent.update_attributes(parent_params)
        redirect_to parent_path(current_user)
      else 
        render :edit
      end
  end

  def destroy
    @parent = Parent.find(params[:id])
    @parent.destroy
    # redirect_to somewhere
  end


protected

  def parent_params
# do we need to add timestamps?!?!!
    params.require(:parent).permit(:firstname, :lastname, :email, :gender, :address, :emergency_phone, :avatar)
  end

end
