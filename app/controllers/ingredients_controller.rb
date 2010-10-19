class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.find(:all)
  end

  def show
  end

end
