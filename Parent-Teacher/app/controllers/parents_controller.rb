class ParentsController < ApplicationController
  def index
    @parents = Parent.all
  end

  def show
    @parent = Parent.find(params[:id])
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
    params.require(:parent).permit(:firstname, :lastname, :email, :gender)
  end

end
