class UsersController < ApplicationController
  before_filter :new_offer
  
  def show
    @user = User.find(params[:id])
    @user_bids = Bid.where(:user_id => params[:id])
    @user_offers = Offer.where(:user_id => params[:id])
  end

  def new_offer
    @new_offer = Offer.new
  end
end