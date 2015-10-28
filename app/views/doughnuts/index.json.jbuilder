json.array!(@doughnuts) do |doughnut|
  json.extract! doughnut, :id, :name, :dough, :toppings, :cost, :image
  json.url doughnut_url(doughnut, format: :json)
end
