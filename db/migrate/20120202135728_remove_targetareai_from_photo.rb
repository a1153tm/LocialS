class RemoveTargetareaiFromPhoto < ActiveRecord::Migration
  def up
    remove_column :photos, :targetareaid
  end

  def down
    add_column :photos, :targetareaid, :integer
  end
end
