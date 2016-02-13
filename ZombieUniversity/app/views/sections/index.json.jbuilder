json.array!(@sections) do |section|
  json.extract! section, :id, :name, :roomNumber, :professor_id, :course_id
  json.url section_url(section, format: :json)
end
