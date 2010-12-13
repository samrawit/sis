class AddSexToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :sex, :character
  end

  def self.down
    remove_column :people, :sex
  end
end
