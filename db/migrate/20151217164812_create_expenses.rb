class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :cost
      t.integer :gl_code
      t.string :location
      t.text :reason
      t.string :person_entertained
      t.integer :total_miles

      t.timestamps null: false
    end
  end
end
