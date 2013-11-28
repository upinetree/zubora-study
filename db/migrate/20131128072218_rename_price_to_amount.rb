class RenamePriceToAmount < ActiveRecord::Migration
  def change
    rename_column :expenses, :price, :amount
  end
end
