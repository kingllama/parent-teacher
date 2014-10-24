class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    #set session: channel name to student.id
    render "show"
  end

  def new #Methinks we don't need this anymore.
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      find_parents(@student)
      flash[:notice] = "Student successfully created!"
      redirect_to school_path(admin_user)
    else
      flash[:notice] = "There was an error and student was not created."
      render :new
    end
  end

  def update
    @student = Student.find(params[:id])
      # if @student.update_attributes(student_params)
      #   redirect_to somewhere
      # else 
      #   render :edit
      # end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    render :new
  end


protected

  def student_params
    params.require(:student).permit(:firstname, :lastname, :grade, :gender, :address, :parent_email, :emergency_contact_name, :emergency_contact_relation, :emergency_phone, :school_id, :notes, :avatar, :evaluation)
  end

  def find_parents(student)
    if student.parent_email
      parent = Parent.find_by_email(student.parent_email)

      if !parent
        parent = Parent.create(email: student.parent_email, password: rand(3456..7890))
        UserMailer.parent_signup_email(parent.email, parent.password).deliver
      end

      @student.parents.push(parent)
    end
  end

end
