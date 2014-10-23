class UserMailer < ActionMailer::Base

  default from: "admin@schoolbox.com" # not a real email at this point

  def parent_signup_email(email, password)
    @email =  email
    @password = password
    @url = 'http://schoolbox.com/' #not a valid url at this point
    mail(to: @email, subject: "Welcome to SchoolBox") # students currently do not have parent_email
    # if this email is sent out on student creation, include some kind of validation to not send out this email if the parent has already received the email for another child
    # an alternative would be to send emails out after student creation and only send to unique email addresses
  end

  def teacher_welcome(school, teacher, password)
    @school = school
    @teacher = teacher
    @password = password #school generated password
    @url = 'http://schoolbox.com/login' #not a valid url at this point
    mail(to: @teacher.email, subject: "Login to SchoolBox") # add from: teacher.email?
  end

  def custom_email(message, recipients)
    @message = message
    if @message.attachment_file_name
      attachments[@message.attachment_file_name] = File.read(@message.attachment.path) 
    end
    mail(to: "", subject: @message.subject_line, bcc: recipients )
  end

end
