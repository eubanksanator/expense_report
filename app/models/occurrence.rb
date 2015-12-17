class Occurrence < ActiveRecord::Base
  has_many :expenses
  accepts_nested_attributes_for :expenses
end
