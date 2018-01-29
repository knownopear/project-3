class Booking < ApplicationRecord

  def check_booking
    # if @all_bookings.includes(:date)
      @hello = @all_bookings.where(date: '2018-01-29').take
    # end
  end


end
