class Message < ActiveRecord::Base
  belongs_to :parent
  belongs_to :student
  belongs_to :teacher
  validates :text, presence: true, length: { maximum: 1000 }
  # validates :type, presence: true
  has_attached_file :attachment, styles: {thumbnail: "60x60#"}
  validates_attachment :attachment, content_type: { content_type: [/\Aapplication\/.*\Z/, 'text/plain'] } , message: "Valid document filetypes only."

end
