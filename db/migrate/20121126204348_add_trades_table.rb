class AddTradesTable < ActiveRecord::Migration
def change
  	create_table :trades do |t|
  		t.integer :item_id
  		t.integer :seller_id 
  		t.integer :buyer_id

  		t.timestamps
  	end
  end
end
