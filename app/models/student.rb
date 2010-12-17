class Student < ActiveRecord::Base
  
 # Defines relationships
 belongs_to :person, :dependent => :destroy
 has_many :educational_bgds, :dependent => :destroy
 has_one :employement, :dependent => :destroy
 has_one :family_info, :dependent => :destroy

end
