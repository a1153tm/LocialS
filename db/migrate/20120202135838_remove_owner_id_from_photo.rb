class RemoveOwnerIdFromPhoto < ActiveRecord::Migration
  def up
    remove_column :photos, :owner_id
  end

  def down
    add_column :photos, :owner_id, :integer
  end
end
