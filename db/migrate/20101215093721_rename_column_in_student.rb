class RenameColumnInStudent < ActiveRecord::Migration
  def self.up
    rename_column :students, :student_id, :stdID
  end

  def self.down
  end
end
