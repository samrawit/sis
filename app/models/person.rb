class Person < ActiveRecord::Base
  # Defines relationship
  has_one :student, :dependent => :destroy
  
 validates_presence_of :first_name, :middle_name, :sex, :email
end
