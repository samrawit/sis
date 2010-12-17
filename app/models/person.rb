class Person < ActiveRecord::Base
  # Defines relationship
  has_one :student, :dependent => :destroy
  
 validates_presence_of :first_name, :middle_name, :sex, :email

  validates_presence_of :first_name, :middle_name, :last_name, :birth_date, :sex
  has_many :students
  
#  scope :search_by_first_name, lambda { | first_name | 
#    {:conditions => ["first_name LIKE :first_name ", { :first_name => first_name+'%' } ] }
#  }


end
