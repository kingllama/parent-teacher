class School < ActiveRecord::Base
  has_many :students
  has_many :classrooms
  validates :name, presence: true
end
