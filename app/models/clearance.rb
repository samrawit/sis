class Clearance < ActiveRecord::Base
  belongs_to :students
  validates_presence_of :reason_for_withdrawal 
  validates_presence_of :reason_for
 
end
