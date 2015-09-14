json.array!(@preparation_tips) do |preparation_tip|
  json.extract! preparation_tip, :id, :name
  json.url preparation_tip_url(preparation_tip, format: :json)
end
