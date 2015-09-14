json.array!(@condition_foods) do |condition_food|
  json.extract! condition_food, :id, :name
  json.url condition_food_url(condition_food, format: :json)
end
