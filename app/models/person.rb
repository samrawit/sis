class Person < ActiveRecord::Base
  validates_presence_of :first_name, :middle_name, :last_name, :birth_date, :sex
  has_many :students

end
