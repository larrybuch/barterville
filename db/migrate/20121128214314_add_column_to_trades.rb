class AddColumnToTrades < ActiveRecord::Migration
  def change
    add_column :trades, :trade_status, :boolean
  end
end
