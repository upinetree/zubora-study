require 'spec_helper'

describe "expense_categories/index" do
  before(:each) do
    assign(:expense_categories, [
      stub_model(ExpenseCategory),
      stub_model(ExpenseCategory)
    ])
  end

  it "renders a list of expense_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
