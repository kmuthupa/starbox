class BeveragesController < ApplicationController
  def index
    @beverages = Beverage.all
  end

  def vend
  end
end
