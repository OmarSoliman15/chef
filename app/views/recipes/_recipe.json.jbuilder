json.extract! recipe, :id, :author, :category, :cock_time, :integer, :cuisine, :image, :prep_time, :ratings, :title, :ingredients[], :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
