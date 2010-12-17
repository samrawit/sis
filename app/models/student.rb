<<<<<<< HEAD
class Student < ActiveRecord::Base
  validates_presence_of :stud_id
  attr_accessor :id_number, :student_id,:year,:ayear
  belongs_to :person
  has_many :clearances
  composed_of :person, 
              :class_name => "Person",
              :mapping => [[:first_name, :middle_name, :last_name]]
              
              
   
 end
=======
class Student  < ActiveRecord::Base
  
  belongs_to :person
  validates_presence_of :id_number
  

#  This connects both the student and person models to retrieve data from both

   def self.search_by_id(name, mname, id, sex)
      Person.find(:all, :joins => :students, :select => "people.*, students.*",
      :conditions => ["people.first_name=? or people.middle_name=? or students.id_number=? or people.sex=?", name, mname, id, sex]) 

  end

 
end
>>>>>>> 26e74c7466fd72eb4a1cdfe74d77337dbc048d1d
