class ClearanceController < ApplicationController
  
  #Returns the contents of the resource identified by params[:id].
  def index
     @clearances = Clearance.all
  end
  def show
     @clearance = Clearance.find(params[:id])
  end
  
  # Constructs a new resource and passes it to the client. This resource will
  #not have been saved on the server.

  def new 
   @clearance = Clearance.new
   @student = Student.new
   
  end
  # Returns the contents of the resource identified by params[:id] in a form
  #suitable for editing

  def edit 
    # Rails.logger.info("------params[:id]--"+  " #{params[:id]}")
    @clearance = Clearance.find(params[:id])
   
  end
  # the create method Creates a new resource from the data in the POST request, 
  #adding it to the collection.

  def create 
    #logger.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& #{params[:clearance]["student_id"]}&&&&&&&&")
        @student = Student.where(['student_id =?', params[:clearance]["student_id"]])
        
        #logger.info("*****student id value*********** #{@student.inspect} ********************")
        
       # if @student.empty?
        #  flash[:notice] = "No id much, please insert the correct id"
         # redirect_to :action => 'new'
        #elsif @student.empty? == false
          
         @clearance = Clearance.new(params[:clearance])
    
          if @clearance.save
              flash[:notice] = "successfully saved"
              Rails.logger.info("------show me params[:id]-------"+@clearance.inspect)
              redirect_to :action => "show", :id => @clearance.id
          else
              flash[:notice] = "error saving the page"
              render :action => "new"
         # end
        end
  end
  # Updates the contents of the resource identified by params[:id] with the
  # data associated with the request.

  def update
    Rails.logger.info("------params[:id]--"+params[:id])
       @clearance = Clearance.find(params[:id])
        if @clearance.update_attributes(params[:clearance])
          flash[:notice] = "successfully updated"
          redirect_to :action => "show"
                  end
  end
end
