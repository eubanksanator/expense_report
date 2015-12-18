class RemoveGlCodeFromExpense < ActiveRecord::Migration
  def change
    remove_column :expenses, :gl_code
  end
end
