class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :student
      t.string :posted_by
      t.string :text, limit: 250
      t.timestamps
    end
  end
end
