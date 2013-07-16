class CoursesController < ApplicationController
    
  before_filter :authenticate, :only => [:index, :edit, :update]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => [:destroy, :create]

  def index
	@courses = Course.all
	@title = "Available Classes"
end
 
  def show
	@course = Course.find(params[:id])
	@title = @course.title
end

  def new
	@course = Course.new
      @video = Video.new
      3.times do
          video = @course.videos.build
          
      end
	@title = "New Course Creation"
  end

  def create
      @course = Course.new(params[:course])
        if  @course.save
           
        redirect_to @course
	else
	@title = "New Course Creation"
	render 'new'

end      
end
   def edit
	@title = "Edit title"
	end

   def update
	@course = Course.find(params[:id])
	if @course.update_attributes(params[:course])
	flash[:success] = "Course Updated."
	redirect_to @course
else
	@title = "Edit Course"
	render 'edit'
end
end  

    def authenticate
      deny_access unless signed_in?
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end 
  
  def destroy
	Course.find(params[:id]).destroy
	flash[:success] = "User destroyed."
	redirect_to courses_path
end

    def admin_user
	redirect_to(root_path) unless current_user.admin?
end
end
