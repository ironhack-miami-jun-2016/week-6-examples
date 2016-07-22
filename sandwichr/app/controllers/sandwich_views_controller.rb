class SandwichViewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @sandwiches_array = Sandwich.all
    render :index
  end

  def show
    @the_sandwich = Sandwich.find(params[:id])
    @all_ingredients = Ingredient.all

    render :show
  end

end
