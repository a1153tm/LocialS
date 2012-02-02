class AddSexIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :sex_id, :integer
  end
end
