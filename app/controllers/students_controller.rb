class StudentsController < ApplicationController
    
   def show
      @person = Person.find(params[:id])
   end
  
   def list
      
   end
   
   def edit
     @person = Person.find(params[:id])
     logger.info("=======params[:id] = #{@person.inspect}=======")
      #@subjects = Subject.find(:all)
   end
   
   def update
      @person = Person.find(params[:person][:id])
      if @person.update_attributes(params[:person])
         redirect_to :action => 'show', :id => @person
      else
         redirect_to :action => "edit", :id => @person
      end
   end
   
   def delete
     logger.info("-------value of params[:student]-----"+params[:id])
     @person = Person.find(params[:id])
     if @person.destroy
      redirect_to :action => 'list'
     end
   end

    # Create New Student
    def new

    end
    def index

    end
    
    def save
      #logger.info("-------value of params[:student]-----"+params[:person].inspect)
    @person = Person.new(params[:person])
    
    if @person.save
      if @person.student=Student.create(params[:student]) 
        @stud = @person.student
        @stud.family_info = FamilyInfo.create(params[:family])
        @edn=@stud.educational_bgds.new(params[:education]) 
        @edn.save        
        #@stud.educational_bgds.save
        @stud.employement = Employement.create(params[:employment]) 
        flash[:notice] = "New record successfully saved"
        render :action => 'list'#, :@id => Person.all
      end
    else
      flash[:notice] = "error while saving this record. Fileds marked * are mandatory"
      render :action => "list"
    end  
  end
end
