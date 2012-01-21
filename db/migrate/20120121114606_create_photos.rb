class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :image
      t.integer :targetageid
      t.integer :targetareaid
      t.boolean :targetsex
      t.integer :owner_id
      t.timestamp :posteddate

      t.timestamps
    end
  end
end
