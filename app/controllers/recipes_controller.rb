class RecipesController < ApplicationController
  def home 
    @recipes = Recipe.all 
  end

  def new
  end

  def edit
  end

  def show
  end
end
