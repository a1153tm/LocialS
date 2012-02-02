class RemoveAreaidFromPeople < ActiveRecord::Migration
  def up
    remove_column :people, :areaid
  end

  def down
    add_column :people, :areaid, :integer
  end
end
