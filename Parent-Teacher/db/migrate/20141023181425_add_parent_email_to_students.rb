class AddParentEmailToStudents < ActiveRecord::Migration
  def change
    add_column :users, :parent_email, :string
    remove_column :users, :student_evaluation, :string
    remove_column :users, :picture, :string
    remove_column :users, :schedule, :string
  end
end
