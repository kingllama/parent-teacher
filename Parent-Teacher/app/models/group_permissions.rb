class GroupPermissions < ActiveRecord:Base
  self.abstract_class = true

  def self.find_by_email(email)
    User.find_by(email: email) || School.find_by(email: email)
  end

  def display_name
    if self.is_a? User 
     "#{full_name} (#{kind})"
    elsif self.is_a? School 
     "#{name} (School)" 
    else 
      "Identity crysis" 
    end
  end

  def to_session
    "#{self.class}:#{self.id}"
  end

  def self.from_session(val)
    if val
      kind, id = val.split(':')
      case kind
        when "School"
          School.find_by_id(id)
        when "User"
        when "Parent"
        when "Teacher"
          User.find_by_id(id)
      end
    end
  end

end