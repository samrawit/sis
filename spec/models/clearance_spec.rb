require 'spec_helper'

describe Clearance do
  #pending "add some examples to (or delete) #{__FILE__}"
   context "when created can't be empty " do
    
    it "must have reason for " do
      p = Clearance.new
      p.reason_for_withdrawal="withdrawal"
      p.reason_for_withdrawal.should_not be_blank

    end
    
    it "must have reason for " do
     p = Clearance.new
      p.reason_for_withdrawal="withdrawal"
      p.reason_for_withdrawal.should_not be_blank

    end
     it "must have reason for " do
      p = Clearance.new
      p.last_date_attend="2010-12-16 "
      p.last_date_attend.should_not be_blank

    end
    it "must have reason for " do
      p = Clearance.new
      p.clearance_semister="1"
      p.clearance_semister.should_not be_blank

    end
    it "must have reason for " do
      p = Clearance.new
      p.clearance_date="2010-12-16 "
      p.clearance_date.should_not be_blank

    end
     it "must have reason for " do
      p = Clearance.new
      p.last_date_attend="2010-12-16 "
      p.last_date_attend.should_not be_blank

    end
    
  end
end
