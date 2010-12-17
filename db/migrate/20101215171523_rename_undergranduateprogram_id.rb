class RenameUndergranduateprogramId < ActiveRecord::Migration
  def self.up
    rename_column :undergrad_departments, :undergraduateprogram_id, :undergraduate_program_id
  end

  def self.down
    rename_column :undergrad_departments, :undergraduate_program_id, :undergraduateprogram_id
  end
end
