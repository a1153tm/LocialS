class AddPersonIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :person_id, :integer
  end
end
