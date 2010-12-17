class UndergradDepartment < ActiveRecord::Base
  # This model validates fields(department name ,preference ) in undergraduatedepartment and specifies its associations
  validates :departmentname, :presence => true
  validates :preference, :presence => true
  validates_numericality_of :preference, :message=>"only numeric value Required"
    
  belongs_to :UndergraduateProgram
end
