class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to student_path(@note.student_id)
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

end