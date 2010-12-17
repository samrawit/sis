class AddFieldnameToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :disability, :integer
  end

  def self.down
    remove_column :students, :disability
  end
end
