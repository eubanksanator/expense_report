class RemoveExpenseTypeFromExpense < ActiveRecord::Migration
  def change
    remove_column :expenses, :expense_type
  end
end
