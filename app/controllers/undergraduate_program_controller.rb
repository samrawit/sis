class UndergraduateProgramController < ApplicationController
  
 # This method intializes the undergraduate program object
  def new
      @undergraduateprogram = UndergraduateProgram.new
      #@undergraduateprogram.undergraddepartments.new
      #@undergraddepartment = UndergradDepartment.new
  end
  # ----------------------------------------------------
  # This method creates the undergraduate program object with its undergrad _department child object
  def create
    @undergraduateprogram = UndergraduateProgram.create(params[:undergraduateprogram])
    @ugd=@undergraduateprogram.undergrad_departments.new(params[:undergraddepartment])
    @ugd.save
    #@undergraduatedeparment= @undergraduateprogram. undergrad_departments.build(params[:undergraddepartment])
   #@showugd = @undergraduateprogram.undergrad_departments
   
    if @undergraduateprogram.save
    
    
      #Rails.logger.info("----testttttttt--------"+ @undergraduateprogram => params[:undergraduateprogram])
      #flash[:notice] = "successfully saved"
      #render :action => "new"
       #@showugd = @undergraduateprogram.undergrad_departments
      redirect_to :action => "show", :id => @undergraduateprogram.id
      #redirect_to  :action =>"show", :undergraduateprogram => @undergraduateprogram
          else
      flash[:notice] = "error saving the data"
      render :action => "new"
    end
 
  end
  def Add
    #@undergraduateprogram = UndergraduateProgram.create(params[:undergraduateprogram])
    #@ugd=@undergraduateprogram.undergrad_departments.new(params[:undergraddepartment])
    #@ugd.save
    #@showugd = @undergraduateprogram.undergrad_departments
      # Rails.logger.info("----testttttttt--------"+ @showugd)
  end
  # ---------------------------------------------------- 
  def edit   
    @undergraduateprogram = UndergraduateProgram.find(params[:id])
        
  end
  # ----------------------------------------------------
  # This method lists the undergraduate program object
  def show
    
     logger.info("!!!!!!!!!!! #{params[:id]} !!!!!!")
    @undergraduateprogram = UndergraduateProgram.where(['id = ?', params[:id]])
  end
   
  # This method updates the undergraduate program object
  def update
    @undergraduateprogram = UndergraduateProgram.find(params[:id])
      @undergraduateprogram.update_attributes(params[:undergraduateprogram])
  end 
  # ----------------------------------------------------
  
 end
