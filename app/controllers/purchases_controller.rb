class PurchasesController < ApplicationController
  def new
      @order = Order.new
  end
end
