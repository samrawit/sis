class CreateEducationalBgds < ActiveRecord::Migration
  def self.up
    create_table :educational_bgds do |t|
      t.integer :student_id
      t.integer :type
      t.string :institution_name
      t.string :institution_rgn
      t.string :institution_zone
      t.string :institution_town
      t.string :stream
      t.string :reg_num
      t.string :result
      t.string :leaving_reason

      t.timestamps
    end
  end

  def self.down
    drop_table :educational_bgds
  end
end
