class OrdersController < ApplicationController
    
     def new
    @order = Order.new
    end
    # def show
    #   end
    #def index
    #   end
    
    def create
      @order = Order.new(params[:order])
        if @order.save_with_payment
           redirect_to @order, :notice => "Thank you for your purchase!  Enjoy your Class!"
           else
           render :new
       end
    end
    end

