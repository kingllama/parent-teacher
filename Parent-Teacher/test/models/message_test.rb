require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  def setup 
    @message = Message.new
  end

  test "creates a message" do 
    assert @message, "Message not created."
  end

  test "can be destroyed" do
    assert @message.destroy, "Message was not destroyed."
  end


end