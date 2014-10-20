require 'test_helper'

class TeacherTest < ActiveSupport::TestCase

  def setup
    @mr_jones = Teacher.create(firstname: "Mr", lastname: "Jones", password: "abcd", email: "mrjones@example.ca")
  end

  test "is a User" do
    assert @mr_jones.is_a?(User), "Mr. Jones is not a type of user."
  end

  test "creates new teacher" do
    assert @mr_jones, "Teacher was not created."
  end

  test "can delete teacher" do
    assert @mr_jones.destroy, "Teacher was not destroyed."
  end

  test "can get a student" do
    assert @mr_jones.students, "teacher.students is not a truthy value."
  end

  test "is not valid without a password" do
    @mr_jones.password = nil
    assert_not @mr_jones.save, "Teacher saved without a password."
  end

  test "has many students" do
    student1 = Student.create(firstname: "Timmy", lastname: "Thomas")
    student2 = Student.create(firstname: "Sally", lastname: "Parker")
    @mr_jones.students.push(student1, student2)
    assert @mr_jones.students.length == 2, "Number of students attached to the teacher does not equal 2." 
  end

  test "can set a student" do
    assert_instance_of(Student, @mr_jones.students.new, "An instance of a student could not be created through the teacher.")
  end

  test "has many classrooms" do
    classroom1 = Classroom.create(subject: "Grade 2 PE")
    classroom2 = Classroom.create(subject: "Grade 6 Music")
    @mr_jones.classrooms.push(classroom1, classroom2)
    assert @mr_jones.classrooms.length == 2, "Mr. Jones does not have 2 classrooms."
  end

end
