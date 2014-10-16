class Student < User
  has_and_belongs_to_many :teachers
  has_and_belongs_to_many :classrooms
  belongs_to :parent
  belongs_to :school
end
