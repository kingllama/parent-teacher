class Message < ActiveRecord::Base
  belongs_to :parent
  belongs_to :student
  belongs_to :teacher
end
