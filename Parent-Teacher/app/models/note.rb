class Note < ActiveRecord::Base

  belongs_to :student
  validates :text, presence: true
  validates :posted_by, presence: true

end