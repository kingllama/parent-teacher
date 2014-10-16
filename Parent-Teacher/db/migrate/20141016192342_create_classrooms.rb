class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :subject
      t.integer :grade
      t.references :user
      t.timestamps
    end
  end
end
