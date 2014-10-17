require 'test_helper'

class ParentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @parent = Parent.create
  end

  test "creates new parent" do
    assert @parent, "Parent was not created."
  end

  test "can delete parent" do
    assert @parent.destroy, "Parent was not destroyed."
  end

  test "can get a student" do
    assert @parent.students, "Parent.students is not a truthy value"
  end

  test "gets multiple students" do
    student1 = Student.create
    student2 = Student.create
    @parent.students.push(student1, student2)
    assert @parent.students.length == 2, "Number of students attached to the parent does not equal 2." 
  end

  test "can set a student" do
    assert_instance_of(Student, @parent.students.new, "An instance of a student could not be created through the parent.")
  end

end
