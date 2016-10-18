class BeatsController < ApplicationController
  def index
    @beat = Beat.all
  end

  def show
    @team = Team.find(params[:team_id])
    @show = Show.find(params[:show_id])
    @beat = Beat.find(params[:id])
  end

  def new
    @team = Team.find(params[:team_id])
    @show = Show.find(params[:show_id])
    @beat = Beat.new
  end

  def create
    @team = Team.find(params[:team_id])
    @show = Show.find(params[:show_id])
    @beat =@show.beats.create!(beat_params)
    redirect_to team_show_path(@team, @show)
  end

  def edit
    @team = Team.find(params[:team_id])
    @show = Show.find(params[:show_id])
    @beat = Beat.find(params[:id])
  end

  def update
    @team = Team.find(params[:team_id])
    @show = Show.find(params[:show_id])
    @beat = Beat.find(params[:id])
    @beat.update!(beat_params)
    redirect_to team_show_path(@team, @show)
  end

  def destroy
    @team = Team.find(params[:team_id])
    @show = Show.find(params[:show_id])
    @beat= Beat.find(params[:id])
    @beat.destroy
    redirect_to team_show_path(@team, @show)
  end

end

private
def beat_params
  params.require(:beat).permit(:title, :body)
end
