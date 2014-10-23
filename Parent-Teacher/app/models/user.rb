class User < ActiveRecord::Base
  has_secure_password
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" #make default file? stock user photo
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
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
