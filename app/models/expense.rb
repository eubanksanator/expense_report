class Expense < ActiveRecord::Base
  belongs_to :occurrence
  belongs_to :expense_type

  accepts_nested_attributes_for :occurrence
end
