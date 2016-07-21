class SandwichViewsController < ApplicationController

  def index
    @sandwiches_array = Sandwich.all
    render :index
  end

end
