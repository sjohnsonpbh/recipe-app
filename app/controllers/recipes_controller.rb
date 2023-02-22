class RecipesController < ApplicationController
  def index 
    @recipes = Recipe.all   
  end
  
  def home 
    
  end

  # GET - request page with form to create a recipe
  def new
    @recipe = Recipe.new 
  end

  # POST - create recipe
  def create 
    @recipe = Recipe.new(recipe_params)

    if @recipe.save 
      flash[:notice] = "Recipe successfully saved"
      redirect_to recipes_path
    else 
      flash[:notice] = "There was an error saving the recipe."
      render :new, status: :unprocessable_entity 
    end
  end

  # GET - Edit Recipe
  def edit
    @recipe = Recipe.find(params[:id])
  end

  def show
    
  end

  private 
  def recipe_params 
    params.require(:recipe).permit(:title, :description, :prep_time, :cook_time, :ingredients, :recipe_photo_path, :thaw_time, :user_id)
  end
end
