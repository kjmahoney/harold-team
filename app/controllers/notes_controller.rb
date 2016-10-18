class NotesController < ApplicationController
  def index
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @show =Show.find(params[:show_id])
    @beat= Beat.find(params[:beat_id])
    @note =Note.new
  end

  def create
    @show =Show.find(params[:show_id])
    @beat= Beat.find(params[:beat_id])
    @beat.notes.create!(note_params.merge(user: current_user))
    redirect_to show_path(@show)
  end

  def edit
    @show =Show.find(params[:show_id])
    @beat= Beat.find(params[:beat_id])
    @note =Note.find(params[:id])
  end

  def update
    @show =Show.find(params[:show_id])
    @note =Note.find(params[:id])
    @note.update(note_params)
    redirect_to show_path(@show)
  end

  def destroy
    @show =Show.find(params[:show_id])
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to show_path(@show)
  end

  private
  def note_params
    params.require(:note).permit(:body, :private)
  end


end
