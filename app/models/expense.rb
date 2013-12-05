class Expense < ActiveRecord::Base
  validates :amount, presence: true, numericality: { only_integer: true }
end
