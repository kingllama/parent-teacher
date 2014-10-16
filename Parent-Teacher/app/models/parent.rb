class Parent < User
  has_and_belongs_to_many :students, foreign_key: :parent_id, join_table: :students_parents
end

