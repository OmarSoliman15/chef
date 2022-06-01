recipes = JSON.parse(File.read('recipes.json'))

recipes.each do |recipe|
  Recipe.create!(recipe)
end