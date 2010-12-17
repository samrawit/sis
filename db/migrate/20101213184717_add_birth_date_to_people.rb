class AddBirthDateToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :birth_date, :date
  end

  def self.down
    remove_column :people, :birth_date
  end
end
