class ChangeColumnToNotWhen < ActiveRecord::Migration
  def change
    remove_column :occurrences, :when
    add_column :occurrences, :occur, :date
  end
end
