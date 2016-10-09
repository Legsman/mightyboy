class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :type
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :order_id
      t.boolean :selected
      t.string :option

      t.timestamps
    end

    add_index :items, :order_id
  end
end
