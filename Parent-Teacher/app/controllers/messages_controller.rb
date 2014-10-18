class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def edit
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new(classroom_params)

# decide where we want to redirect once a class room as been saved!
    # if @message.save
      # redirect_to somewhere
    # else
      # render :edit
    # end

  end

  def update
    @message = Message.find(params[:id])
      # if @message.update_attributes(classroom_params)
      #   redirect_to somewhere
      # else 
      #   render :edit
      # end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    # redirect_to somewhere
  end


protected

  def message_params
    # DO we need to specify timestamps here!?!?!?!
    params.require(:message).permit(:text, :type)
  end

end
