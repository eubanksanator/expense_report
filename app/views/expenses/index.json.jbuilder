json.array!(@expenses) do |expense|
  json.extract! expense, :id, :cost, :gl_code, :location, :reason, :person_entertained, :total_miles
  json.url expense_url(expense, format: :json)
end
