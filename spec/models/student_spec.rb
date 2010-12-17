require 'spec_helper'

describe Student do
  #pending "add some examples to (or delete) #{__FILE__}"
  context "is valid when " do
    it "has a student id " do 
      s = Student.new 
      s.student_id = "SCR/1436/93"
      s.student_id.should_not be_blank
    end
  end
end
