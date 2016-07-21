class SandwichViewsController < ApplicationController

  def index
    @sandwiches_array = Sandwich.all
    render :index
  end

  def show
    @the_sandwich = Sandwich.find(params[:id])
    render :show
  end

end
