require 'spec_helper'

describe "expense_categories/new" do
  before(:each) do
    assign(:expense_category, stub_model(ExpenseCategory).as_new_record)
  end

  it "renders new expense_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", expense_categories_path, "post" do
    end
  end
end
