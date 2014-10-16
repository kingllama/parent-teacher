class Parent < ActiveRecord::User
  has_and_belongs_to_many :students
end
