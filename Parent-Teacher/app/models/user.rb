class User < ActiveRecord::Base
   #has_secure_password
   validates :firstname, presence: true, length: { maximum: 40 }
   validates :lastname, presence: true, length: { maximum: 40 }
   #validates :gender, presence: true
   validates :type, presence: true
  
  def fullname
    "#{firstname} #{lastname}"
  end
  
end

