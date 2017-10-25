class CatRentalRequestsController < ApplicationController
  def new
    @cat_rental = CatRentalRequest.new
    render :new
  end

  def create
    @cat_rental = CatRentalRequest.new(cat_rental_params)
    if @cat_rental.save
      redirect_to cat_rental_requests_url
    else
      render 
    end
  end

  private
  def cat_rental_params
    params.require(:cat_rental_request).permit(:start_date, :end_date)
  end
end
