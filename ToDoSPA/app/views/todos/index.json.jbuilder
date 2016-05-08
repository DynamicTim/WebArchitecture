json.array!(@todos) do |todo|
  json.extract! todo, :id, :name, :notes
  json.url todo_url(todo, format: :json)
end
