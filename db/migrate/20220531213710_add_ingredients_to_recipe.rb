class AddIngredientsToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :ingredients, :text, array: true, default: []
    add_index :recipes, :ingredients, using: :gin
  end
end
