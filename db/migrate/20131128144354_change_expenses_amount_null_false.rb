class ChangeExpensesAmountNullFalse < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :expenses do |t|
        dir.up   { t.change :amount, :integer, :null => false }
        dir.down { t.change :amount, :integer, :null => true  }
      end
    end
  end
end
