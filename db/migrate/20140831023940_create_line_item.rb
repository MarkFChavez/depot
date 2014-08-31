class CreateLineItem < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.column :cart_id, :integer
      t.column :product_id, :integer

      t.timestamps
    end

    add_index :line_items, :cart_id
    add_index :line_items, :product_id
  end
end
