class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[ show ]
  include Pagy::Backend

  # GET /recipes or /recipes.json
  def index
    @pagy, @recipes = pagy(Recipe.all)
  end

  # GET /recipes/1 or /recipes/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
end
