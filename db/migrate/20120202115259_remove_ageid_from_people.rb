class RemoveAgeidFromPeople < ActiveRecord::Migration
  def up
    remove_column :people, :ageid
  end

  def down
    add_column :people, :ageid, :integer
  end
end
