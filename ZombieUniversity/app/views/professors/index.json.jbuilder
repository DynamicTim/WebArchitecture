json.array!(@professors) do |professor|
  json.extract! professor, :id, :name, :number, :numberOfBrainsEaten
  json.url professor_url(professor, format: :json)
end
