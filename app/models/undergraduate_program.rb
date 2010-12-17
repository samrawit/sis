class UndergraduateProgram < ActiveRecord::Base
  # This model validates fields(enrollmenttype,programat,band) in undergraduate program and specifies its associations
  validates :enrollmenttype, :presence=> true
                      #:message=>"Enrollment Type Required"
  validates :programat, :presence=> true
                      #:message=>"Program at Required"
  validates :band, :presence=> true
                      #:message=>"Band Required"
   
  
  belongs_to :student
  has_many :undergrad_departments
  has_many :other_program
  
end
