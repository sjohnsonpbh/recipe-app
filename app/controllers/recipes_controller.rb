class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  
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
  
  end

  def update 
    if @recipe.update(recipe_params)
       redirect_to recipes_path
    else  
      flash[:notice] = "There was an error updating the recipe."
      render :edit, status: :unprocessable_entity 
    end
  end

  # GET - show a recipe 
  def show
     
  end

  def destroy 
    @recipe.destroy
    redirect_to recipes_path
  end

  private 
  def recipe_params 
    params.require(:recipe).permit(:title, :description, :prep_time, :cook_time, :ingredients, :recipe_photo_path, :thaw_time, :user_id)
  end

  def set_recipe 
    @recipe = Recipe.find(params[:id])
  end
end
