class Expense < ActiveRecord::Base
  validates :amount, presence: true
end
