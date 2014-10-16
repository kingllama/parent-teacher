class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :subject
      t.integer :grade
      t.references :teacher
      t.references :student
      t.timestamps
    end
  end
end
