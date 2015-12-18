json.array!(@expense_types) do |expense_type|
  json.extract! expense_type, :id, :name, :gl_code
  json.url expense_type_url(expense_type, format: :json)
end
