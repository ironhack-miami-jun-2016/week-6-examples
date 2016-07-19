class IngredientsController < ApplicationController

  def create
    the_ingredient = Ingredient.create(ingredient_params)
    render json: the_ingredient
  end

  def show
    the_ingredient = Ingredient.find_by(id: params[:id])

    if the_ingredient
      render json: the_ingredient
    else
      render status: 404, json: { error: "Ingredient #{params[:id]} not found" }
    end
  end

  def destroy
    the_ingredient = Ingredient.find_by(id: params[:id])

    if the_ingredient
      the_ingredient.destroy
      head :no_content
    else
      render status: 404, json: { error: "Ingredient #{params[:id]} not found" }
    end
  end


  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :calories)
  end

end
