class Teacher < User
  has_many :classrooms, foreign_key: :user_id
  has_and_belongs_to_many :students, foreign_key: :teacher_id, join_table: :students_teachers
  has_many :messages
end