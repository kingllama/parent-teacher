class Teacher < User
  
  has_secure_password

  has_many :classrooms, foreign_key: :user_id
  has_and_belongs_to_many :students, foreign_key: :teacher_id, join_table: :students_teachers
  has_many :messages
  has_many :events
  validates :email, 
               presence: true,
               uniqueness: true,
               length: { maximum: 50 }


end
