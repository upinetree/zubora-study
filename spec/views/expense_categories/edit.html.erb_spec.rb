require 'spec_helper'

describe "expense_categories/edit" do
  before(:each) do
    @expense_category = assign(:expense_category, stub_model(ExpenseCategory))
  end

  it "renders the edit expense_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", expense_category_path(@expense_category), "post" do
    end
  end
end
