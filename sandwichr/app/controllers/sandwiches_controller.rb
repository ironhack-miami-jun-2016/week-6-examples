class SandwichesController < ApplicationController

  def index
    sandwiches_array = Sandwiches.all
    render json: sandwiches_array
  end

  def create
    the_sandwich = Sandwich.create(sandwich_params)
    render json: the_sandwich
  end

  def show
    the_sandwich = Sandwich.find_by(id: params[:id])

    if the_sandwich
      # render json: { sandwich: the_sandwich, ingredients: the_sandwich.ingredients }
      render json: the_sandwich.to_json(include: [:ingredients])
    else
      render status: 404, json: { error: "Sandwich #{params[:id]} not found" }
    end
  end

  def update
    the_sandwich = Sandwich.find_by(id: params[:id])

    if the_sandwich
      the_sandwich.update(sandwich_params)
      render json: the_sandwich
    else
      render status: 404, json: { error: "Sandwich #{params[:id]} not found" }
    end
  end

  def destroy
    the_sandwich = Sandwich.find_by(id: params[:id])

    if the_sandwich
      the_sandwich.destroy
      head :no_content
    else
      render status: 404, json: { error: "Sandwich #{params[:id]} not found" }
    end
  end


  private

  def sandwich_params
    params.require(:sandwich).permit(:name, :bread_type)
  end

end
