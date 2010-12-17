class CreateUndergradDepartments < ActiveRecord::Migration
  def self.up
    create_table :undergrad_departments do |t|
      t.string :departmentname
      t.integer :preference
      t.integer :undergraduateprogram_id

      t.timestamps
    end
  end

  def self.down
    drop_table :undergrad_departments
  end
end
