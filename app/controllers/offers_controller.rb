class OffersController < ApplicationController
  
  def index
    @offers = Offer.all
    @offer = Offer.new
  end
  def new
    @offer = Offer.new
  end
  
  def create
    @offer = Offer.create(params[:offer])
    if @offer.save
      flash[:notice] = "Successfully created..."
      redirect_to @offer
    else
      flash[:error] = ":-("
      render :action => 'new'
    end
  end
  
  def show
    @offer = Offer.find(params[:id])
  end
end
