class OffersController < ApplicationController
  before_filter :new_offer
  
  def index
    @offers = Offer.where('')
    if params[:location].present?
      @offers = Offer.geo_scope(:origin => params[:location]).having('distance <= 20')
    end
    
    if params[:category_ids].present?
      @offers = @offers.where(:category_id => params[:category_ids])
    end
    @offers ||= Offer.all
    @offer = Offer.new
  end
  
  def new
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
    @bid = Bid.new
  end
  
  private
  
  def new_offer
    @new_offer = Offer.new
  end
end
