class UndergradDepartmentController < ApplicationController
  #before_filter :load_undergraduateprogram
  
   def new     
      undergraduateprogram = UndergradDepartment.new
      undergraduateprogram.departmentname = params[:departmentname]
      undergraduateprogram.preference = params[:preference]
      undergraduateprogram.undergraduate_program_id = params[:undergraduate_program_id]     
      undergraduateprogram.save!
      render undergraduate_program_show_path(params[:undergraduate_program_id])
      #:controller => 'undergraduate_program', :action => 'show'', :id => params[:undergraduate_program_id]
      #render :controller => 'UndergraduateProgram',:action => 'show', :id => params[:undergraduate_program_id]
     # render :file=>'views/undergraduate_program/show.html.erb'

      logger.info("************ #{ undergraduateprogram.inspect } ************** ")    
      #if undergraduateprogram.save
       # redirect_to undergrad_department_show_path
      #else
       # redirect_to :action => :new 
      #end
      #@undergraduateprogram << @undergraduateprogram.undergraddepartment.new      
  end
  
  def create
    @undergraddepartment<<@undergraduateprogram.undergraddepartment.new(params[:undergraddepartment])
    @undergraduateprogram.save
    
  end 
  def show
    
  end
  def destroy
     @undergraddepartment<<@undergraduateprogram.undergraddepartment.find(params[:id])
     @undergraddepartment.destroy
  end
  
  private
  def load_undergraduateprogram
    @undergraduateprogram = UndergraduateProgram.find(params[:undergraduateprogram_id])
    logger.info("^^^^^^^^^^^^^^^^^^^^^ #{@undergraduateprogram.inspect}")
  end
end
