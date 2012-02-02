class AddAreaIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :area_id, :integer
  end
end
