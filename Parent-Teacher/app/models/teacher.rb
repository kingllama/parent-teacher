class Teacher < User
  has_many :classrooms, foreign_key: :user_id
  has_and_belongs_to_many :students, foreign_key: :teacher_id, join_table: :students_teachers
  has_many :messages
  validates :email, 
               presence: true,
               uniqueness: true,
               length: { maximum: 50 },
               format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
