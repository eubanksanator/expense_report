class Expense < ActiveRecord::Base
  belongs_to :occurrence
  belongs_to :expense_type
  belongs_to :employee

  accepts_nested_attributes_for :occurrence

  def between_these
    "Hello"
    # @expenses_between_dates = []
    # expenses.each do |x|
    #   if x.occurrence.occur.to_s == Date.today.to_s
    #     return "This is the given cost of #{x.cost}"
    #   end
    # end
  end

end
