class MatchesController < ApplicationController
  before_action :match_params, only: %i[create]

  def new
    @match = Match.new
  end

  def index
    @matches = Match.all

    @markers = @matches.geocoded.map do |match|
      {
        lat: match.latitude,
        lng: match.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {match: match})
      }
    end
  end

  def show
    @match = Match.find(params[:id])
  end

  private
  def match_params
    params.require(:match).permit(:address, :datetime, :latitude, :longitude)
  end

end
