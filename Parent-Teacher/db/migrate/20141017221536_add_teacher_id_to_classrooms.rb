class AddTeacherIdToClassrooms < ActiveRecord::Migration
  def change
    add_reference :classrooms, :teacher, index: true
  end
end
