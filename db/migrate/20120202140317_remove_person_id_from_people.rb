class RemovePersonIdFromPeople < ActiveRecord::Migration
  def up
    remove_column :people, :person_id
  end

  def down
    add_column :people, :person_id, :integer
  end
end
