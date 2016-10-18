class ShowsController < ApplicationController
  def index
    @team = Team.find(params[:team_id])
    @shows = Show.all
  end

  def show
    @team = Team.find(params[:team_id])
    @show =Show.find(params[:id])
    @beat =Beat.where(:show_id => @show.id)
    @note = Note.where(:beat_id => @beat.ids)
  end

  def edit
    @team = Team.find(params[:team_id])
    @show =Show.find(params[:id])
  end

  def update
    @team = Team.find(params[:team_id])
    @show =Show.find(params[:id])
    @show.update!(show_params.merge(team: @team))
    redirect_to team_show_path(@team, @show)
  end

  def new
    @show = Show.new
    @team = Team.find(params[:team_id])
  end

  def create
    @team = Team.find(params[:team_id])
    @show =Show.create!(show_params.merge(team: @team))
    redirect_to team_shows_path(@team, @show)
  end

  def destroy
    @team = Team.find(params[:team_id])
    @show = Show.find(params[:id])
    @show.destroy
    redirect_to team_shows_path(@team)
  end


  private
  def show_params
    params.require(:show).permit(:title, :date, :length, :body)
  end

end
