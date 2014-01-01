require 'spec_helper'

describe ExpenseCategory do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:color) }
  it { should have_many(:expenses) }
end
