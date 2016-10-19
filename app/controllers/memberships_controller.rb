class MembershipsController < ApplicationController
  def new
    @membership = Membership.new
    @users = User.all
    @teams = Team.all
  end

  def create
    @membership =Membership.create!(membership_params)
    redirect_to teams_path
  end

  private
  def membership_params
    params.require(:membership).permit(:user_id, :team_id)
  end

end
