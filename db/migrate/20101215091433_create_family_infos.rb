class CreateFamilyInfos < ActiveRecord::Migration
  def self.up
    create_table :family_infos do |t|
      t.integer :student_id
      t.string :fathers_occ
      t.integer :fathers_ed_level
      t.string :mothers_full_name
      t.string :mothers_occ
      t.integer :mothers_ed_level

      t.timestamps
    end
  end

  def self.down
    drop_table :family_infos
  end
end
