class Department < ActiveRecord::Base
  has_many :employees

  def depart_color
    case self.name
    when "IT"
      return "it-depart"
    when "HR"
      return "hr-depart"
    when "Accounting"
      return "account-depart"
    end
  end
end
