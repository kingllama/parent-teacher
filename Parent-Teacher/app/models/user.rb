class User < ActiveRecord::Base
  has_secure_password
  validates :firstname, presence: true, length: { maximum: 40 }
  validates :lastname, presence: true, length: { maximum: 40 }
  validates :gender, presence: true
  validates :type, presence: true

  def full_name
    "#{firstname.capitalize} #{lastname.capitalize}"
  end

  def to_s
    full_name
  end
end
