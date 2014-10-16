class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.belongs_to :teacher
      t.belongs_to :parent
      t.belongs_to :classroom
      t.belongs_to :school
      t.timestamps
    end
  end
end
