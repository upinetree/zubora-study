require 'spec_helper'

describe "expenses/index" do
  before(:each) do
    assign(:expenses, FactoryGirl.create_list(:expense, 2))
  end

  it "renders a list of expenses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
