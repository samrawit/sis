class Student < Person
  validates_presence_of :student_id
  belongs_to :person
  composed_of :person, 
              :class_name => "Person",
              :mapping => [[:first_name, :middle_name, :last_name]]
  def initialize(first_name, middle_name, last_name, sex, birth_date)
      @first_name  = "Yared",
      @middle_name = "Getachew"
      @last_name   = "Tessema"
  end
  
 # def self.search_by_first_name(first_name)
  #   students = Student.
  #   @p = Person.search_by_first_name_with_id_filter(first_name,)
  #end
  
  

end
