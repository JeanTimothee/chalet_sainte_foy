class BookingsController < ApplicationController
  def destroy
    @booking = Booking.find(params[:id])
    @chalet = Chalet.find(@booking.chalet_id)
    @booking.delete
    redirect_to chalet_path(@chalet)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.chalet = Chalet.find(params[:chalet_id])
    if @booking.save
      flash[:notice] = "Booking saved!"
      redirect_to chalet_path(@booking.chalet)
    else
      @chalet = @booking.chalet
      @bookings = @chalet.bookings
      render 'chalets/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :name)
  end
end
