class AddRefrenceToStudentForEvents < ActiveRecord::Migration
  def change
     add_reference :events, :student
  end
end
