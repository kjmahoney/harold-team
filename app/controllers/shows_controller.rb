class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def show
    @show =Show.find(params[:id])
    @beat =Show.where(:show_id => @show.id)
  end

  def new
    @show = Show.new
  end

  def create
    @show =Show.create!(show_params)
    redirect_to show_path(@show)
  end

  def edit
    @show =Show.find(params[:id])
  end

  def update
    @show =Show.find(params[:id])
    @show.update(show_params)
    redirect_to show_path(@show)
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
    redirect_to shows_path
  end


  private
  def show_params
    params.require(:show).permit(:title, :date, :length, :body)
  end

end
