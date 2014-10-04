class WelcomeController < ApplicationController
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
end
