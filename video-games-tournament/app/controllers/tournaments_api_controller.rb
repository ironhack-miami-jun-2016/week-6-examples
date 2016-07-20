class TournamentsApiController < ApplicationController

  def index
    tournaments_array = Tournament.all
    render json: tournaments_array
  end

end
