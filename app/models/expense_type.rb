class ExpenseType < ActiveRecord::Base
  has_many :expenses

  def name_with_gl
    "#{name} (#{gl_code})"
  end
end
