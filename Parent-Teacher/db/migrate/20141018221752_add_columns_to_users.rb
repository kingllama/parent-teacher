class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string 
    add_column :users, :phone, :string 
    add_column :users, :emergency_phone, :string
    add_column :users, :notes, :string
    add_column :users, :student_evaluation, :string
    add_column :users, :picture, :string
    add_column :users, :schedule, :string
  end
end
