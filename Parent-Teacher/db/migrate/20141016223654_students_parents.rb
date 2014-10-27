class StudentsParents < ActiveRecord::Migration
  def change
    create_table :students_parents do |t|
      t.references :student
      t.references :parent
    end
  end
end
