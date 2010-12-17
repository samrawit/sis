class Student < ActiveRecord::Base
  validates_presence_of :student_id
  belongs_to :person
  composed_of :person, 
              :class_name => "Person",
              :mapping => [[:first_name, :middle_name, :last_name]]
end
