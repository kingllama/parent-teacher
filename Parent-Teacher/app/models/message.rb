class Message < ActiveRecord::Base
  belongs_to :parent
  belongs_to :student
  belongs_to :teacher
  validates :text, presence: true, length: { maximum: 1000 }
  validates :type, presence: true
end
