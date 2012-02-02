class RemoveTargetageidFromPhoto < ActiveRecord::Migration
  def up
    remove_column :photos, :targetageid
  end

  def down
    add_column :photos, :targetageid, :integer
  end
end
