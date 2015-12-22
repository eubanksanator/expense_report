json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :department_id
  json.url employee_url(employee, format: :json)
end
