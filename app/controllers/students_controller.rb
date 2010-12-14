class StudentsController < ApplicationController
  def search
    
  end
  def show
    @student = Student.search_by_first_name(params[:name])
    Rails.logger.info("------------------"+@student.inspect)
  end
end
