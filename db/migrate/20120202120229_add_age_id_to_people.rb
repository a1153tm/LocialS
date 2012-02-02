class AddAgeIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :age_id, :integer
  end
end
