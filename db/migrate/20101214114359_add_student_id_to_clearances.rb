class AddStudentIdToClearances < ActiveRecord::Migration
  def self.up
    add_column :clearances, :student_id, :integer
  end

  def self.down
    remove_column :clearances, :student_id
  end
end
