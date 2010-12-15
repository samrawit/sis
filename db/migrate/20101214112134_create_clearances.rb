class CreateClearances < ActiveRecord::Migration
  def self.up
    create_table :clearances do |t|
      t.string :reason_for
      t.date :last_date_attend
      t.integer :class_year
      t.integer :clearance_semister
      t.date :clearance_date
      t.text :reason_for_withdrawal

      t.timestamps
    end
  end

  def self.down
    drop_table :clearances
  end
end
