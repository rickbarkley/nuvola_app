class OrdersController < ApplicationController
    
    def new
    @course = Course.find(params[:course_id])
    @order = @course.orders.new
        
    end
    def show
       end
    def index
        #@user = User.find(params[:id])
    	@orders = Orders.paginate(:page => params[:page])
        @course = Course.all
        @title = "Available Classes"
    end
    
    def create
        
      @order = Order.new(params[:order])
        if @order.save_with_payment
           redirect_to @order, :notice => "Thank you for your purchase!  Enjoy your Class!"
           else
            render :new
       end
    end
    end


