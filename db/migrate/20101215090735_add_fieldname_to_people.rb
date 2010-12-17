class AddFieldnameToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :amh_full_name, :string
    add_column :people, :photo, :string
    add_column :people, :birth_rgn, :string
    add_column :people, :birth_woreda, :string
    add_column :people, :birth_town, :string
    add_column :people, :birth_kebele, :string
    add_column :people, :nationality, :string
    add_column :people, :marital_status, :integer
    add_column :people, :em_name, :string
    add_column :people, :em_rnship, :string
    add_column :people, :em_rgn, :string
    add_column :people, :em_woreda, :string
    add_column :people, :em_town, :string
    add_column :people, :em_hnum, :string
    add_column :people, :em_tel_res, :string
    add_column :people, :em_tel_office, :string
  end

  def self.down
    remove_column :people, :em_tel_office
    remove_column :people, :em_tel_res
    remove_column :people, :em_hnum
    remove_column :people, :em_town
    remove_column :people, :em_woreda
    remove_column :people, :em_rgn
    remove_column :people, :em_rnship
    remove_column :people, :em_name
    remove_column :people, :marital_status
    remove_column :people, :nationality
    remove_column :people, :birth_kebele
    remove_column :people, :birth_town
    remove_column :people, :birth_woreda
    remove_column :people, :birth_rgn
    remove_column :people, :photo
    remove_column :people, :amh_full_name
  end
end
