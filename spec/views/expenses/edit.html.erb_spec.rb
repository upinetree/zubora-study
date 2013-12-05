require 'spec_helper'

describe "expenses/edit" do
  before(:each) do
    @expense = assign(:expense, stub_model(Expense))
  end

  it "renders the edit expense form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", expense_path(@expense), "post" do
    end
  end
end
