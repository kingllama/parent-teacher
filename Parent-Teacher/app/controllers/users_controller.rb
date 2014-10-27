class UsersController < ApplicationController

  before_action :require_login
  before_action :authorize

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

# decide where we want to redirect once a class room as been saved!
    # if @user.save
      # redirect_to somewhere
    # else
      # render :edit
    # end

  end

  def update
    @user = User.find(params[:id])
      # if @user.update_attributes(user_params)
      #   redirect_to somewhere
      # else 
      #   render :edit
      # end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    # redirect_to somewhere
  end


protected

  def user_params
# do we need to add timestamps?!?!!
    params.require(:user).permit(:firstname, :lastname, :email, :gender, :type, :password, :password_confirmation)
  end

  

end
