class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :ageid
      t.integer :areaid
      t.string :name
      t.boolean :sex

      t.timestamps
    end
  end
end
