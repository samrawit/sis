class CreateUndergraduatePrograms < ActiveRecord::Migration
  def self.up
    create_table :undergraduate_programs do |t|
      t.timestamps
    end
  end

  def self.down
    drop_table :undergraduate_programs
  end
end
