class UserMailer < ActionMailer::Base

  default from: "no-reply@schoolbox.com" # not a real email at this point

  def parent_signup_email(email, password)
    @email =  email
    @password = password
    @url = 'http://schoolbox.com/' #not a valid url at this point
    mail(to: @email, subject: "Welcome to SchoolBox") 
  end

  def teacher_welcome(school, teacher, password)
    @school = school
    @teacher = teacher
    @password = password
    @url = 'http://schoolbox.com/login' #not a valid url at this point
    mail(to: @teacher.email, subject: "Login to SchoolBox") # add from: teacher.email?
  end

  def custom_email(sender, message, recipients)
    @message = message
    if @message.attachment_file_name
      attachments[@message.attachment_file_name] = File.read(@message.attachment.path) 
    end
    mail(to: "", subject: @message.subject_line, bcc: [recipients, sender.email], from: sender.email )
  end

end
