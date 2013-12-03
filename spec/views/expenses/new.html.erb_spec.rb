require 'spec_helper'

describe "expenses/new" do
  before(:each) do
    assign(:expense, stub_model(Expense).as_new_record)
  end

  it "renders new expense form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", expenses_path, "post" do
    end
  end
end
