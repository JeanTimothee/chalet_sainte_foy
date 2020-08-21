class ChaletsController < ApplicationController
  def show
    @chalet = Chalet.find(params[:id])
    @bookings = @chalet.bookings
    @booking = Booking.new
  end
end
