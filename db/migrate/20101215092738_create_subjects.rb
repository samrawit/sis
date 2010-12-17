class CreateSubjects < ActiveRecord::Migration
  def self.up
    create_table :subjects do |t|
      t.integer :educational_bgd_id
      t.string :name
      t.string :result

      t.timestamps
    end
  end

  def self.down
    drop_table :subjects
  end
end
