class AddOccurrenceIdToExpense < ActiveRecord::Migration
  def change
    add_column :expenses, :occurrence_id, :integer
  end
end
