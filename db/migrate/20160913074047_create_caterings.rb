class CreateCaterings < ActiveRecord::Migration
  def change
    create_table :caterings do |t|

      t.timestamps
    end
  end
end
