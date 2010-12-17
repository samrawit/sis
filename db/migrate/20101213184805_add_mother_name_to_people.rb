class AddMotherNameToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :mother_name, :string
  end

  def self.down
    remove_column :people, :mother_name
  end
end
