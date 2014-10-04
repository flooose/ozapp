class OzArtsController < ApplicationController
  before_action :detect_device_type

  def index
    respond_to do |format|
      format.html do |html|
        html.phone do
          @oz_art = OzArt.new
        end

        @oz_arts = OzArt.all
      end
    end
  end

  def new
    @oz_art = OzArt.new
  end

  def create
    @oz_art = OzArt.new(oz_art_params)

    if @oz_art.save
      redirect_to @oz_art
    else
      render action: :new
    end
  end

  def show
    @oz_art = OzArt.find(params[:id])
  end

  private

  def oz_art_params
    params.require(:oz_art).permit(:file, :comment, :lat, :long)
  end
end
