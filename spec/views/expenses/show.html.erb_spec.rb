require 'spec_helper'

describe "expenses/show" do
  before(:each) do
    @expense = assign(:expense, stub_model(Expense))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
