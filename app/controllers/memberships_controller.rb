class MembershipsController < ApplicationController
  def new
    @membership = Membership.new
    @users = User.all
    @teams = Team.all

  end

  def create
  end
end
