class EducationalBgd < ActiveRecord::Base

 # Defines relationships
 belongs_to :student
 has_many :subjects

end
