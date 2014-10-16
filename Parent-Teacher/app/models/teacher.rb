class Teacher < ActiveRecord::User
  has_many :classrooms
  has_and_belongs_to_many :students
end
