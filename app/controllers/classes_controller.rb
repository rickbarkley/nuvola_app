class ClassesController < ApplicationController
  def index
	@title = "Available Classes"
	@classes = Classes.paginate(:page => params[:page])
  end
  
  def new 
	@title = "New Class Creation"
	@classes = Classes.new
	end
  
  def show
        @classes = Classes.find(params[:id])	
	@title = @classes.title
	end
   
  def create
	@classes = Classes.new(params[:id])
	if @classes.save
	redirect_to @classes
else
	@title = "Create Class"
	render 'new'
end
end

end
