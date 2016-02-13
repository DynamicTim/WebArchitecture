json.array!(@students) do |student|
  json.extract! student, :id, :name, :number, :percentDecomposed, :numberOfLimbs
  json.url student_url(student, format: :json)
end
