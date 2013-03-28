class BeveragesController < ApplicationController
  def index
    @beverages = Beverage.all
  end

  def vend
    @beverage = Beverage.find(params[:id])
    if @beverage.available? && @beverage.vend
      render :text => "Thank you! Please enjoy your #{@beverage.name}", :status => 200
    else
      render :text => "Sorry! We are temporarily unable to dispense #{@beverage.name}. Please make a different selection", :status => 200
    end
  end
end
