json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :ingredient
  json.url recipe_url(recipe, format: :json)
end
