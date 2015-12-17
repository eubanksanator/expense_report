class Expense < ActiveRecord::Base
  belongs_to :occurrence, dependent: :destroy
  accepts_nested_attributes_for :occurrence
end
