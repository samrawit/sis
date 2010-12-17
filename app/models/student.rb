class Student  < ActiveRecord::Base
  
  belongs_to :person
  validates_presence_of :id_number
  

#  This connects both the student and person models to retrieve data from both

   def self.search_by_id(name, mname, id, sex)
      Person.find(:all, :joins => :students, :select => "people.*, students.*",
      :conditions => ["people.first_name=? or people.middle_name=? or students.id_number=? or people.sex=?", name, mname, id, sex]) 

  end

 
end
