class Addundergraduateprograms < ActiveRecord::Migration
  def self.up
    add_column :undergraduate_programs,:enrollmenttype, :string
    add_column :undergraduate_programs,:programat, :string
    add_column :undergraduate_programs,:band, :integer
    add_column :undergraduate_programs,:student_id, :integer
  end
  def self.down
    remove_column :undergraduate_programs,:enrollmenttype
    remove_column :undergraduate_programs,:programat
    remove_column :undergraduate_programs,:band
    remove_column :undergraduate_programs,:student_id
  end
end
