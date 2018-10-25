json.extract! card, :id, :type, :name, :description, :created_at, :updated_at
json.url card_url(card, format: :json)
