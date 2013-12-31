class ExpenseCategory < ActiveRecord::Base
  validates :name, presence: true
  validates :color, presence: true

  has_many :expenses
end
