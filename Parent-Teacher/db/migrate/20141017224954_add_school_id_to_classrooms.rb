class AddSchoolIdToClassrooms < ActiveRecord::Migration
  def change
    add_reference :classrooms, :school, index: true
  end
end
