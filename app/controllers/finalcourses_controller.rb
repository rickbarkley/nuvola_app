class FinalcoursesController < ApplicationController
    
    def index
        @finalcourses = Finalcourse.all
        @title = "Available Classes"
end
    
  def new
      @finalcourse = Finalcourse.new
      @title = "New Final Course"
  end
  
  def show
      @finalcourse = Finalcourse.find(params[:id])
      @title = "@finalcourse.title"
end
    
    
    def create
        @finalcourse = Finalcourse.new(params[:finalcourse])
        if  @finalcourse.save
            redirect_to @finalcourse
       else
            @title = "New Course Creation"
        render 'new'
        end
        end      

    end
