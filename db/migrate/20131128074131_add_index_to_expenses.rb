class AddIndexToExpenses < ActiveRecord::Migration
  def change
    add_index :expenses, :category_id
  end
end
