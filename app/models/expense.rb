class Expense < ActiveRecord::Base
  validates :amount, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
