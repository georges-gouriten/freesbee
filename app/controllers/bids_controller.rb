class BidsController < ApplicationController
  
  def new
    @bid = Bid.new
  end
  def create
    @bid = Bid.create(params[:bid])
    
    if @bid.save
      redirect_to root_url, :alert => 'Your bid has been submitted successfully...'
    else
      redirect_to root_url, :alert => 'You have already bid on that item...'
    end
  end
end
