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

      context "他のカテゴリ名と重複するとき" do
        let(:name) { "Duplicated" }

        it "falseとなる" do
          FactoryGirl.create(:expense_category, name: name)
          should be_false
        end
      end

      context "他のカテゴリ名と重複しないとき" do
        let(:name) { "Unique" }

        it "trueとなる" do
          FactoryGirl.create(:expense_category)
          should be_true
        end
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
