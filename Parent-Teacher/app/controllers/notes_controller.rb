class NotesController < ApplicationController

  before_filter :load_student

  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @note = @student.notes.build
  end

  def edit
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to root_path
      #push note into student notes collection
      #redirect somewhere
    end
  end

  def update
  end

  def destroy
    @note = Note.find_by(student_id: params[:id])
    @note.destroy
  end

  private

    def note_params
      params.require(:note).permit(:posted_by, :text, :student_id)
    end

    def load_student
      @student = Student.find(params[:student_id])
    end

end