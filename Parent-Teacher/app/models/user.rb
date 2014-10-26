class User < ActiveRecord::Base
  
  # has_secure_password

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/nopicture.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_attached_file :evaluation, styles: {thumbnail: "60x60#"}
  validates_attachment :evaluation, content_type: { content_type: [/\Aapplication\/.*\Z/, 'text/plain'] } , message: "Valid document filetypes only."

  # validates :firstname, presence: true, length: { maximum: 40 }
  # validates :lastname, presence: true, length: { maximum: 40 }
  # validates :gender, presence: true
  validates :type, presence: true

  def full_name
    "#{firstname.capitalize} #{lastname.capitalize}"
  end

  def to_s
    full_name
  end

    
end
