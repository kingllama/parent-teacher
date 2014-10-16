class StudentsClassrooms < ActiveRecord::Migration
  def change
    create_table :students_classrooms do |t|
      t.references :student
      t.references :classroom
    end
  end
end
