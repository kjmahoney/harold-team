class BeatsController < ApplicationController
  def index
    @beat = Beat.all
  end

  def show
    @show = Show.find(params[:show_id])
    @beat = Beat.find(params[:id])
  end

  def new
    @show = Show.find(params[:show_id])
    @beat = Beat.new
  end

  def create
    @show = Show.find(params[:show_id])
    @beat =@show.beats.create!(beat_params)
    redirect_to show_path(@show)
  end

  def edit
    @show = Show.find(params[:show_id])
    @beat = Beat.find(params[:id])
  end

  def update
    @beat = Beat.find(params[:id])
    @beat.update!(beat_params)
  end

  def destroy
    @beat= Beat.find(params[:id])
    @beat.destroy
    redirect_to show_path(@show)
  end

end

private
def beat_params
  params.require(:beat).permit(:title, :body)
end
