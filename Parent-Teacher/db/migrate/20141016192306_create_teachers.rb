class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.belongs_to :student
      t.timestamps
    end
  end
end
