class ChangeColumnCategoryIdToExpenseCategoryId < ActiveRecord::Migration
  def change
    rename_column :expenses, :category_id, :expense_category_id
  end
end
