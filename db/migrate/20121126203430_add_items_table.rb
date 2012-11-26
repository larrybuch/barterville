class AddItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :name
      t.text    :description
      t.string  :photo
      t.integer :user_id

      t.timestamps
    end
  end
end