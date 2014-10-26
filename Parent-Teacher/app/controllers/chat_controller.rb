class ChatController < WebsocketRails::BaseController
  before_action :require_login

  def new_message
    # WebsocketRails[studentchannel1].trigger(:message_event, message)
    # ech
    # Code for incoming message goes 'ere
  end
end