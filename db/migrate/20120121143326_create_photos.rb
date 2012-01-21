class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.integer :targetageid
      t.integer :targetareaid
      t.boolean :targetsex
      t.integer :owner_id

      t.timestamps
    end
  end
end
