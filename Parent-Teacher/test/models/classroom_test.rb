require 'test_helper'

class ClassroomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @classroom = Classroom.create
  end

  test "creates new Classroom" do
    assert @classroom, "Classroom was not created."
  end

  test "can be deleted" do
    assert @classroom.destroy, "Classroom was not destroyed."
  end

  test "can get a student" do
    student = Student.create
    @classroom.students.push(student)
    assert @classroom.students.include?(student), "This student was not saved to the classroom."
  end

  test "can get many students" do
    student1 = Student.create
    student2 = Student.create
    @classroom.students.push(student1, student2)
    assert @classroom.students.length == 2, "Two students were not added."
  end

  test "should be able to set a student" do
    assert_instance_of(Student, @classroom.students.new, "No instance of Student class was raised.")
  end

  # test "cannot add more than one teacher" do
  #   assert_not @classroom.teacher, "Second teacher created for single-teacher classroom."
  # end


  # test validations, test associations
end
