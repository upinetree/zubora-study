require 'spec_helper'

describe Expense do
  it { validate_presence_of(:amount) }
  it { validate_numericality_of(:amount).only_integer }
  it { should belong_to :expense_category }
end
