class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :photo_id
      t.integer :person_id

      t.timestamps
    end
  end
end
