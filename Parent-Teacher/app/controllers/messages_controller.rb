class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
    current_sender
  end

  def edit
    @message = Message.find(params[:id])
  end

  def create
    current_sender
    @message = Message.new(message_params)
    
    if @message.recipients == "All student guardians"
      students = @sender.students
      get_parent_emails(students)
    elsif @message.recipients == "All teachers"
      teachers = @sender.teachers # need to add school/teacher direct association
      get_teacher_emails(teachers)
    else
      classroom = Classroom.where('subject LIKE ?', @message.recipients)
      students = classroom.students
      get_parent_emails(students)
    end
      
    if @message.save
      UserMailer.teacher_to_parents(@message, @send_to).deliver
      redirect_to root_path
    else
      render :new
    end

  end

  def update
    @message = Message.find(params[:id])
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
  end


protected

  def message_params
    params.require(:message).permit(:recipients, :subject_line, :text, :type, :attachment)
  end

  def current_sender
    @sender = Teacher.find(session[:user_id]) if session[:user_id]
    @sender = School.find(session[:school_id]) if session[:school_id]
  end

  def get_parent_emails(students)
    @send_to = []
    students.each do |student|
      student.parents.each do |parent|
        @send_to.push(parent.email)
      end
    end
  end

  def get_teacher_emails(teachers)
    @send_to = []
    teachers.each do |teacher|
      @send_to.push(teacher.email)
    end
  end

end
