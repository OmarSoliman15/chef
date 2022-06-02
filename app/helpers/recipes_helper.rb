module RecipesHelper
  def self.filter_args(recipes = ::Recipe, params = [])
    if params[:ingredients].present? && params[:ingredients].kind_of?(Array)
      params[:ingredients].each do |ingredient|
        ingredient = "%#{ingredient.strip.downcase}%"
        recipes = recipes.filter_by_ingredient(ingredient)
      end
    end

    recipes
  end
end
