class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team =Team.find(params[:id])
    @membership =Membership.where(:team_id => @team.id)
    @shows = Show.where(:team_id => @team.id)
  end

  def new
    @team = Team.new
  end

  def create
    @team =Team.create!(team_params)
    redirect_to teams_path
  end

  def edit
    @team =Team.find(params[:id])
  end

  private
  def team_params
    params.require(:team).permit(:name)
  end
end
