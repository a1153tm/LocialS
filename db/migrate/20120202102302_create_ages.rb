class CreateAges < ActiveRecord::Migration
  def change
    create_table :ages do |t|
      t.string :age_range

      t.timestamps
    end
  end
end
