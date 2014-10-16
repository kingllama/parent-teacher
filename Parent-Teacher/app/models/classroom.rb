class Classroom < ActiveRecord::Base
  belongs_to :school 
  belongs_to :teacher
  has_and_belongs_to_many :students, foreign_key: :classroom_id, join_table: :students_classrooms
  
end
