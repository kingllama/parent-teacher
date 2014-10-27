require 'test_helper'

class ParentTest < ActiveSupport::TestCase

  def setup
    @dad = Parent.create(firstname: "John", lastname: "Thomas", password: "abcd", email: "john@example.ca")
  end

  test "is a User" do
    assert @dad.is_a?(User), "Parent is not a type of user."
  end

  test "creates new parent" do
    assert @dad, "Parent was not created."
  end

  test "can delete parent" do
    assert @dad.destroy, "Parent was not destroyed."
  end

  test "can get a student" do
    assert @dad.students, "Parent.students is not a truthy value"
  end

  test "is not valid without a password" do
    @dad.password = nil
    assert_not @mr_jones.save, "Teacher saved without a password."
  end

  test "gets multiple students(children) " do
    timmy = Student.create(firstname: "Timmy", lastname: "Thomas")
    jenny = Student.create(firstname: "Jenny", lastname: "Thomas")
    @dad.students.push(timmy, jenny)
    assert @dad.students.length == 2, "Number of students(children) attached to the parent does not equal 2." 
  end

  test "can set a student" do
    assert_instance_of(Student, @dad.students.new, "An instance of a student(child) could not be created through the parent.")
  end

end
