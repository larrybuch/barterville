class ModifyTradesTable < ActiveRecord::Migration
  def change
    add_column :trades, :buyer_item_id, :integer
    add_column :trades, :seller_item_id, :integer
  end
end
