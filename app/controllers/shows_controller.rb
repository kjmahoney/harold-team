class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
