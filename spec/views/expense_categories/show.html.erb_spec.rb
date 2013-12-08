require 'spec_helper'

describe "expense_categories/show" do
  before(:each) do
    @expense_category = assign(:expense_category, stub_model(ExpenseCategory))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
