require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  def setup
    @timmy = Student.create(firstname: "Timmy", lastname: "Thomas")
  end

  test "is a User" do
    assert @timmy.is_a?(User), "Timmy is not a type of user."
  end

  test "creates a new student" do
    assert @timmy, ("Timmy was not created.")
  end

  test "can delete a student" do 
    assert @timmy.destroy, ("Timmy was not deleted.")
  end

  test "must have a firstname" do
    @timmy.firstname = nil
    assert_not @timmy.save, "Timmy saved in spite of no first name."
  end

  test "has many parents" do
    parent1 = Parent.create(firstname: "John", lastname: "Thomas", password: "abcd", email: "john@example.ca")
    parent2 = Parent.create(firstname: "Jane", lastname: "Thomas", password: "abcd", email: "jane@example.ca")
    @timmy.parents.push(parent1, parent2)
    assert @timmy.parents.length == 2, "Two parents were not assigned to Timmy."
  end

  test "has many teachers" do
    teacher1 = Teacher.create(firstname: "Mr", lastname: "Jones", password: "abcd", email: "mrjones@example.ca")
    teacher2 = Teacher.create(firstname: "Mrs", lastname: "Peters", password: "abcd", email: "mrspeters@example.ca")
    @timmy.teachers.push(teacher1, teacher2)
    assert @timmy.teachers.length == 2, "Two teachers were not assigned to Timmy."
  end

  test "has many classrooms" do
    classroom1 = Classroom.create
    classroom2 = Classroom.create
    @timmy.classrooms.push(classroom1, classroom2)
    assert @timmy.classrooms.length == 2, "Two teachers were not assigned to Timmy."
  end

  test "has one school" do
    timschool = School.create(name: "Wilford Elementary", address: "999 Henning Drive, Wilfordshire")
    @timmy.school = timschool
    assert @timmy.school == timschool, "School was not assigned to Timmy."
  end

  # test "does not have more than one school" do
  #   school = School.create
  #   skool = School.create
  #   assert_not @timmy.school == school, "Timmy is able to have multiple schools."
  # end


end
