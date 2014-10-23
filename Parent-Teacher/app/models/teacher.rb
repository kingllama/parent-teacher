class Teacher < User
  
  has_secure_password

  belongs_to :school
  has_many :classrooms, foreign_key: :user_id
  has_and_belongs_to_many :students, foreign_key: :teacher_id, join_table: :students_teachers
  has_many :messages
  has_many :events
  validates :email, 
               presence: true,
               uniqueness: true,
               length: { maximum: 50 }


end


#  UPDATE "users" SET "school_id" = $1, "updated_at" = $2 WHERE "users"."id" = 1  [["school_id", 3], ["updated_at", "2014-10-23 20:55:37.656675"]]

# Teacher Exists (1.5ms)  SELECT  1 AS one FROM "users"  WHERE "users"."type" IN ('Teacher') AND ("users"."email" = 'savanah.ward@yundt.net' AND "users"."id" != 35) LIMIT 1
