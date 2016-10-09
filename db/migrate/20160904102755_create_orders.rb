class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :total
      t.datetime :pickup_time
      t.string :phone
      t.text :info   

      t.timestamps
    end
  end
end
