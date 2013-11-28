class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :price
      t.integer :category_id
      t.string :memo

      t.timestamps
    end
  end
end
