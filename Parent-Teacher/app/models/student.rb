class Student < User
  has_and_belongs_to_many :teachers
  has_and_belongs_to_many :classrooms
  has_and_belongs_to_many :parents
  belongs_to :school
end
