require 'spec_helper'

describe Person do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  context "when created " do
    
    it "must have first name " do
      p = Person.new(:first_name => "Rahwa")
      p.first_name.should_not be_blank

    end
    
    it "must have middle name " do
      p = Person.new(:first_name => "Rahwa", :middle_name => "Mohammed", :last_name => "Mekonnen" )
      p.middle_name.should_not be_blank

    end

    it "must have last name " do
      p = Person.new(:first_name => "Rahwa", :last_name => "Mekonnen" )
      p.last_name.should_not be_blank
    end

  end
end
