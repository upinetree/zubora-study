class RenameItemTable < ActiveRecord::Migration
  def change
    rename_table :items, :expenses
  end
end
