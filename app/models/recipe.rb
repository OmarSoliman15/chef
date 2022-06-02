class Recipe < ApplicationRecord
  scope :filter_by_ingredient, -> (ingredient) { where("LOWER(array_to_string(ingredients, ', ')) like ?",  ingredient) }
end
