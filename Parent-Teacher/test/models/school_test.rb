require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @school = School.create(name: "Wilford Elementary", address: "999 Henning Drive, Wilfordshire")
  end

  test "creates new school" do
    assert @school, "School not created."
  end

  test "can delete school" do
    assert @school.destroy, "School not destroyed."
  end

  test "must have a name" do
    assert_not_nil @school.name, "School does not have a name."
  end

  test "cannot save without a name" do
    @school.name = nil
    assert_not @school.save, "School was saved without a name."
  end

  test "has many classrooms" do
    classroom1 = Classroom.create(subject: "Grade 2 PE")
    classroom2 = Classroom.create(subject: "Grade 6 Music")
    @school.classrooms.push(classroom1, classroom2)
    assert @school.classrooms.length == 2, "School does not include 2 classrooms"
  end

  test "has many students" do
    student1 = Student.create(firstname: "Timmy", lastname: "Thomas")
    student2 = Student.create(firstname: "Sally", lastname: "Parker")
    @school.students.push(student1, student2)
    assert @school.students.length == 2, "School does not include 2 classrooms"
  end

  test "can set classrooms" do
    assert_instance_of(Classroom, @school.classrooms.new, "No instance of classroom created through school.")
  end

  test "can set students" do
    assert_instance_of(Student, @school.students.new, "No instance of student created through school.")
  end

end
