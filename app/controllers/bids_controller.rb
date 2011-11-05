class BidsController < ApplicationController
  
  def new
    @bid = Bid.new
  end
  def create
    @bid = Bid.create(params[:bid])
    
    if @bid.save
      redirect_to root_url, :alert => 'Your bid has been submitted successfully...'
    else
      
    end
  end
end
