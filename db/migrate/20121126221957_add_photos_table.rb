class AddPhotosTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :photo
      t.timestamps
    end
  end
end
