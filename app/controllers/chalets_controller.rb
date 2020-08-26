class ChaletsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @chalet = Chalet.all.first
    @bookings = @chalet.bookings
    @booking = Booking.new
  end
end
