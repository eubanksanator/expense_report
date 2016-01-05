Expense.destroy_all
ExpenseType.destroy_all
Occurrence.destroy_all
Department.destroy_all
Employee.destroy_all

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

  Department.create(name: "IT", manager: Faker::Name.name, email: Faker::Internet.email)
  Department.create(name: "HR", manager: Faker::Name.name, email: Faker::Internet.email)
  Department.create(name: "Accounting", manager: Faker::Name.name, email: Faker::Internet.email)


20.times do
  @department_id = Department.all.sample.id
  Occurrence.create(occur: Faker::Date.between(30.days.ago, Date.today))
  Employee.create(name: Faker::Name.name, department_id: @department_id,email: Faker::Internet.email, password: "12345678", password_confirmation: "12345678")

end

@occurrences = Occurrence.all
@ex_type = ExpenseType.all
@employee = Employee.all

@occurrences.each do |occur|
  Expense.create(
    cost: "#{rand(1..150)}",
    location: Faker::Address.street_address,
    reason: Faker::Company.catch_phrase,
    person_entertained: Faker::Name.name,
    occurrence_id: occur.id,
    employee_id: @employee.sample.id,
    expense_type_id: @ex_type.sample.id )
end





puts "Created #{ExpenseType.count} Expense Types"
puts "Created #{Occurrence.count} Occurrences"
puts "Created #{Expense.count} Expenses"
puts "Created #{Employee.count - 1} Employees"
puts "Created #{Department.count} Departments"

