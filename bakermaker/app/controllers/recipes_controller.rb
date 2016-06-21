class RecipesController < ApplicationController
  # before_action :select_issue, only: [:show, :edit, :update, :destroy]
  # before_filter :authorize
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    4.times do
      @recipe.ingredients.build()
    end
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end


  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :name,
        :pkg_cost,
        :pkg_merchant,
      ]
    )
  end
end
