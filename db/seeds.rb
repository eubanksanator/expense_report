Expense.destroy_all
ExpenseType.destroy_all
Occurrence.destroy_all

ExpenseType.create([
  { name: "Travel", gl_code: 7580 },
  { name: "Cell Phone", gl_code: 7510 },
  { name: "Employee Meal", gl_code: 7557 },
  { name: "Employee Entertainment", gl_code: 7555 },
  { name: "Other Expenses", gl_code: 1000},
  { name: "Car Rental", gl_code: 7501 },
  { name: "Mileage", gl_code: 7501 },
  { name: "Auto", gl_code: 7501 },
  { name: "Toll", gl_code: 7573 },
  { name: "Cab Fare", gl_code: 7573 },
  { name: "Parking", gl_code: 7573 },
  { name: "Client Meal", gl_code: 7555 },
  { name: "Client Entertainment", gl_code: 7555 }
  ])

20.times do
  Occurrence.create([
    { occur: Faker::Date.between(30.days.ago, Date.today) }
    ])
end

@occurrences = Occurrence.all
@ex_type = ExpenseType.all

@occurrences.each do |occur|
  Expense.create(
    cost: "#{rand(1..150)}",
    location: Faker::Address.street_address,
    reason: Faker::Company.catch_phrase,
    person_entertained: Faker::Name.name,
    occurrence_id: occur.id,
    expense_type_id: @ex_type.sample.id )
end





puts "Created #{ExpenseType.count} Expense Types"
puts "Created #{Occurrence.count} Occurrences"
puts "Created #{Expense.count} Expenses"

