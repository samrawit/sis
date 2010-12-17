class Student < ActiveRecord::Base
  validates_presence_of :stud_id
  attr_accessor :id_number, :student_id,:year,:ayear
  belongs_to :person
  has_many :clearances
  composed_of :person, 
              :class_name => "Person",
              :mapping => [[:first_name, :middle_name, :last_name]]
              
              
   
 end
