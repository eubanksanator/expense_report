module ExpensesHelper

  def between_these2(expenses)
    expenses.each do |x|
      if x.occurrence.occur.to_s == Date.today.to_s
        return x.cost
      end
    end
  end

end
