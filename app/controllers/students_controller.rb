class StudentsController < ApplicationController
  
  def search
    @title = "Search"    
  end
  
  def show    
    #this calls the search_by_id methos in the student model
    @student = Student.search_by_id(params[:fname], params[:mname], params[:stud_id], params[:sex])
  end
  
end
