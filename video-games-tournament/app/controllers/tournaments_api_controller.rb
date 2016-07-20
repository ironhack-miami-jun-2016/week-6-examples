class TournamentsApiController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    tournaments_array = Tournament.all
    render json: tournaments_array
  end

  def create
    the_tournament = Tournament.create(tournament_params)
    render json: the_tournament, status: 201
  end


  private

  def tournament_params
    params.require(:tournament).permit(:name)
  end

end
