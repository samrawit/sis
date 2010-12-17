class CreateUndergraduatePrograms < ActiveRecord::Migration
  def self.up
    create_table :undergraduate_programs do |t|
      t.string :enrollmenttype
      t.string :programat
      t.integer :band
      t.integer :student_id
      t.timestamps
    end
  end

  def self.down
    drop_table :undergraduate_programs
  end
end
