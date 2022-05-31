json.extract! recipe, :id, :author, :category, :cook_time, :cuisine, :image, :prep_time, :ratings, :title, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
