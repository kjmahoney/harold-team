class NotesController < ApplicationController
  def index
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @team = Team.find(params[:team_id])
    @show =Show.find(params[:show_id])
    @beat= Beat.find(params[:beat_id])
    @note =Note.new
  end

  def create
    @team = Team.find(params[:team_id])
    @show =Show.find(params[:show_id])
    @beat= Beat.find(params[:beat_id])
    @beat.notes.create!(note_params.merge(user: current_user))
    redirect_to team_show_path(@team, @show)
  end

  def edit
    @team = Team.find(params[:team_id])
    @show =Show.find(params[:show_id])
    @beat= Beat.find(params[:beat_id])
    @note =Note.find(params[:id])
  end

  def update
    @team = Team.find(params[:team_id])
    @show =Show.find(params[:show_id])
    @beat= Beat.find(params[:beat_id])
    @note =Note.find(params[:id])
    @note.update(note_params)
    redirect_to team_show_beat_path(@team, @show, @beat)
  end

  def destroy
    @team = Team.find(params[:team_id])
    @show =Show.find(params[:show_id])
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to team_show_path(@team, @show)
  end

  private
  def note_params
    params.require(:note).permit(:body, :private)
  end


end
