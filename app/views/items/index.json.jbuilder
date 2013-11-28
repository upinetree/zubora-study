json.array!(@items) do |item|
  json.extract! item, :price, :category_id, :memo
  json.url item_url(item, format: :json)
end
