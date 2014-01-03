require 'spec_helper'

describe "支出項目管理" do
  let(:index_path) { '/expenses' }

  describe "新規登録画面" do
    let!(:expense_categories) { FactoryGirl.create_list(:expense_category, 5) }
    let(:new_path) { index_path + '/new'}

    before { visit new_path }

    it "すべてのカテゴリのラジオボックスが存在する" do
      expense_categories.each do |category|
        expect(page).to have_css("#expense_expense_category_id_#{category.id}")
      end
    end

    context "支出項目を登録したとき" do
      before do
        fill_in :expense_amount,  with: "1000"
        fill_in :expense_memo,    with: "メモ"
        choose  :expense_expense_category_id_1
        click_button "登録する"
      end

      it "登録が成功する" do
        within 'p#notice' do
          expect(page).to have_content(I18n.t('message.notice.created'))
        end
      end

      it "登録した支出項目に正しくカテゴリが設定される" do
        expect(Expense.last.expense_category_id).to eq(1)
      end
    end
  end
end
