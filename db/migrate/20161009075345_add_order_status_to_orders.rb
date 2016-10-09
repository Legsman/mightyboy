class AddOrderStatusToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :order_status, index: true
  end
end
