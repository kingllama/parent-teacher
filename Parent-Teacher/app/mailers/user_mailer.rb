class UserMailer < ActionMailer::Base

  default from: "admin@schoolbox.com" # not a real email at this point

  def parent_signup_email(student)
    @student =  student
    @url = 'http://schoolbox.com/parent-signup' #not a valid url at this point
    mail(to: @student.parent_email, subject: "Welcome to SchoolBox")
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

  def school_newsletter(school)
    @school = school
    @all_parents_and_teachers = User.all
    @all_parents_and_teachers.each do |user|
      if user.email
        mail(to: user.email, subject: "News from #{@school.name}!")
      end
    end
  end

  def internal_notice(school)
    @school = school
    @teachers = school.teachers
    @teachers.each do |teacher|
      mail(to: teacher.email, subject: "Internal Notice to Teachers at #{school.name}")
    end
  end

  def teacher_to_parents(classroom)
    @classroom = classroom
    @students = classroom.students
    @unique_parents = @students.uniq { |student| student.parent_email } #if siblings were in the same class, parent would only get one email
    @unique_parents.each do |student|
      mail(to: student.parent_email, subject: "News about your child's class, #{classroom.subject}")
    end
  end



end
