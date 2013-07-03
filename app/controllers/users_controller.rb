class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => :destroy

  def index
    	@users = User.paginate(:page => params[:page], :per_page => 10)
	@title = "All Users"
    	   
  end
    
  def show
      @user = User.find(params[:id])
      @title = @user.name
  end
  
  def new
      @user = User.new
      @title = "Sign Up"
  end
    
    def create
        @user = User.new(params[:user])
        if @user.save
            sign_in @user
            flash[ :succes] = "Welcome to Nuvola Academy!"
            redirect_to @user
            else
            @title = "Sign Up"
            render 'new'
            end
	end

   def edit
	@title = "Edit title"
	end

   def update
	@user = User.find(params[:id])
	if @user.update_attributes(params[:user])
	flash[:success] = "Profile Updated."
	redirect_to @user
else
	@title = "Edit User"
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
	User.find(params[:id]).destroy
	flash[:success] = "User destroyed."
	redirect_to users_path
end

    def admin_user
	redirect_to(root_path) unless current_user.admin?
end
end

