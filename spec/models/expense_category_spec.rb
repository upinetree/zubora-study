require 'spec_helper'

describe ExpenseCategory do

  describe "#valid?" do
    subject { expense_category.valid? }

    describe "name" do
      let(:expense_category) { FactoryGirl.build(:expense_category, name: name) }

      context "空のとき" do
        let(:name) { "" }
        it { should be_false }
      end
    end

    describe "color" do
      let(:expense_category) { FactoryGirl.build(:expense_category, color: color)}

      context "空のとき" do
        let(:color) { "" }
        it { should be_false }
      end
    end
  end
end
