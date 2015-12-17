class Expense < ActiveRecord::Base
  belongs_to :occurrence, dependent: :destroy
end
