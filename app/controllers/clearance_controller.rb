class ClearanceController < ApplicationController
  def show
     @clearance = Clearance.find(params[:id])
  end
  def new 
    @clearance = Clearance.new
  end
  def edit 
    @clearance = Clearance.find(params[:id])
    Rails.logger.info("------params[:id]--"+params[:id])
  end
  def create 
         @clearance = Clearance.new(params[:clearance])
    
          if @clearance.save
              flash[:notice] = "successfully saved"
              Rails.logger.info("------show me params[:id]-------"+@clearance.inspect)
              redirect_to :action => "show", :id => @clearance.id
          else
              flash[:notice] = "error saving the page"
              render :action => "new"
          end
  end
  def update
    Rails.logger.info("------params[:id]--"+params[:id])
       @clearance = Clearance.find(params[:id])
        if @clearance.update_attributes(params[:clearance])
          flash[:notice] = "successfully updated"
          redirect_to :action => "show"
                  end
  end
end
