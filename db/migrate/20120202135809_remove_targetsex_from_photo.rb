class RemoveTargetsexFromPhoto < ActiveRecord::Migration
  def up
    remove_column :photos, :targetsex
  end

  def down
    add_column :photos, :targetsex, :boolean
  end
end
