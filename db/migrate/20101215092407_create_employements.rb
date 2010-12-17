class CreateEmployements < ActiveRecord::Migration
  def self.up
    create_table :employements do |t|
      t.integer :student_id
      t.string :job_type
      t.string :employer_name
      t.text :employer_add

      t.timestamps
    end
  end

  def self.down
    drop_table :employements
  end
end
