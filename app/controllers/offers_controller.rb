class OffersController < ApplicationController
  
  def new
    @offer = Offer.new
  end
  
  def create
    @offer = Offer.create(params[:offer])
    if @offer.save
      
    else
      
    end
  end
end
