class CreateExpenseCategories < ActiveRecord::Migration
  def change
    create_table :expense_categories do |t|
      t.string :name, null: false
      t.string :color, null: false

      t.timestamps
    end
  end
end
