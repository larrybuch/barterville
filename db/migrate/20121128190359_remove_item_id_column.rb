class RemoveItemIdColumn < ActiveRecord::Migration
  def change
    remove_column :trades, :item_id
  end
end
