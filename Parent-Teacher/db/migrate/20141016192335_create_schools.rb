class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.references :classroom
      t.references :student
      t.timestamps
    end
  end
end
