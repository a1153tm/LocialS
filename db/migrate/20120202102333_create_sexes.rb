class CreateSexes < ActiveRecord::Migration
  def change
    create_table :sexes do |t|
      t.string :sex

      t.timestamps
    end
  end
end
