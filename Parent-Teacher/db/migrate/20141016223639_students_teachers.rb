class StudentsTeachers < ActiveRecord::Migration
  def change
    create_table :students_teachers do |t|
      t.references :student
      t.references :teacher
    end
  end
end
