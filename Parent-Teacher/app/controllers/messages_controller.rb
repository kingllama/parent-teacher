class MessagesController < ApplicationController
 
  before_action :require_login

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
      teachers = @sender.teachers 
      get_teacher_emails(teachers)
    else
      classroom = Classroom.find_by(subject: @message.recipients)
      students = classroom.students
      get_parent_emails(students)
    end
      
    if @message.save
      UserMailer.custom_email(current_sender, @message, @send_to).deliver
      flash[:notice] = "Message sent!" #flashes not happening
      if @sender.is_a?(Teacher)
        redirect_to teacher_path(@sender)
      else
        redirect_to school_path(@sender)
      end
    else
      flash[:notice] = "There was an error and this message could not be sent."
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
