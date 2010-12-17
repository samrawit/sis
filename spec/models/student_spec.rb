require 'spec_helper'

describe Student do
  #pending "add some examples to (or delete) #{__FILE__}"
  context "is valid when " do
    it "has a student id " do 
      s = Student.new 
      s.id_number = "SCR/1436/93"
      s.id_number.should_not be_blank
    end
  end
end
