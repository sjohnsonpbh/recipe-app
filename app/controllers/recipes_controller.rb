class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_action :require_same_user, only: [:destroy]
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
    @recipe = helpers.current_user.recipes.new(recipe_params)
    if @recipe.save 
      flash[:notice] = "Recipe successfully saved"
      redirect_to @recipe
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
       redirect_to @recipe
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
  def prep_time_set 
    @prep_time_set = [[1, 1], [2, 2], [3, 3], [4, 4]]
  end

  def require_same_user 
    if helpers.current_user != @recipe.user 
      flash[:notice] = "Not Authorized!"
      redirect_to helpers.current_user
    end
  end
  
  def recipe_params 
    params.require(:recipe).permit(:title, :description, :prep_time, :cook_time, :ingredients, :recipe_photo_path, :thaw_time, :user_id, category_ids: [])
  end

  def set_recipe 
    @recipe = Recipe.find(params[:id])
  end
end
