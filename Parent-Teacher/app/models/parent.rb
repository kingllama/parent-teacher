class Parent < User

  has_secure_password
  
  has_and_belongs_to_many :students, foreign_key: :parent_id, join_table: :students_parents
  has_many :messages
  # validates :phone, presence: true
  validates :email, 
               presence: true,
               uniqueness: true,
               length: { maximum: 50 }

end

