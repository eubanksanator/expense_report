class AddExpenseTypeIdToExpense < ActiveRecord::Migration
  def change
    add_column :expenses, :expense_type_id, :integer
  end
end
