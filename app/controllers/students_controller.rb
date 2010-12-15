class StudentsController < ApplicationController
  def new
    
  end
  def search
    
  end
    def show
    @student = Person.search(params[:name])
    Rails.logger.info("------------------"+@student.inspect)
  end
end
