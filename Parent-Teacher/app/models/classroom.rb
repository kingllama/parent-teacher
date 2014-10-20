class Classroom < ActiveRecord::Base
  belongs_to :school 
  belongs_to :teacher, foreign_key: :user_id
  has_and_belongs_to_many :students, foreign_key: :classroom_id, join_table: :students_classrooms
  validates :subject, presence: true
  validates :grade, numericality: true
  
end
