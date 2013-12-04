require 'spec_helper'

describe Expense do

  describe "#valid?" do
    let(:expense) { FactoryGirl.build(:expense, amount: amount) }
    subject { expense.valid? }

    describe "amount" do
      context "空のとき" do
        let(:amount) { "" }
        it { should be_false }
      end

      context "整数のとき" do
        let(:amount) { 100 }
        it { should be_true }
      end

      context "小数のとき" do
        let(:amount) { 20.5 }
        it { should be_false }
      end

      context "負のとき" do
        let(:amount) { -100 }
        it { should be_true }
      end

      context "文字列のとき" do
        let(:amount) { "String" }
        it { should be_false }
      end
    end
  end
end
