class RemoveSexFromPeople < ActiveRecord::Migration
  def up
    remove_column :people, :sex
  end

  def down
    add_column :people, :sex, :boolean
  end
end
