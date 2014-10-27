require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.create(firstname: "John", lastname: "Doe", password: "abcd", email: "johndoe@example.ca")
  end
  
  test "is not valid without a first name" do
    @user.firstname = nil
    assert_not @user.save, "User saved without a first name."
  end

  test "is not valid without a last name" do
    @user.lastname = nil
    assert_not @user.save, "User saved without a last name."
  end

  test "must have a unique email" do
    same_email = User.new(firstname: "Sam", lastname: "Johndoe", password: "efgh", email: "johndoe@example.ca")
    assert_not same_email.save, "User saved despite having the same email as @user"
  end


end
