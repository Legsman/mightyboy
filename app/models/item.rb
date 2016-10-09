class Item < ActiveRecord::Base
  belongs_to :order
  has_many :order_items

  default_scope { where(selected: true) }
end
