class CreateExpenseTypes < ActiveRecord::Migration
  def change
    create_table :expense_types do |t|
      t.string :name
      t.integer :gl_code

      t.timestamps null: false
    end
  end
end
