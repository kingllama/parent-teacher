class Student < User
  
  has_and_belongs_to_many :teachers, foreign_key: :student_id, join_table: :students_teachers
  has_and_belongs_to_many :classrooms, foreign_key: :student_id, join_table: :students_classrooms
  has_and_belongs_to_many :parents, foreign_key: :student_id, join_table: :students_parents
  belongs_to :school
  has_many :messages
  has_many :notes
  has_many :events

end
