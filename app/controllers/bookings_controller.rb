class BookingsController < ApplicationController
  # before_action :authenticate_user!, except: [:index, :show]


  def home
    @all_services = Service.all
    @booking = Booking.new
    @all_bookings = Booking.all
    @bookings_on_date = @all_bookings.where(date: '2018-01-29')
    # render json: @bookings_on_date

    @slots_taken = @bookings_on_date.each do |booking|
      p booking.time
    end




  end


  def services
    @all_services = Service.all.order(created_at: :asc)
  end


  def create
    # @new_booking = current_user.booking.create(booking_params)
    # render json: params

    @matched_booking = Booking.where({time: params[:time], date: params[:date]}) #params.keys[0] is the selected time's value
    respond_to do |format|
      format.js { render json: @matched_booking}
    end


  end


  def show
    @searched_booking = Booking.find(params[:id])
  end


  def edit
    @searched_booking = Booking.find(params[:id])
  end


  def update
    @searched_booking = Booking.find(params[:id])
    @searched_booking.update(booking_params)
    redirect_to bookings_path
  end


  def destroy
    Booking.find(params[:id]).delete
    redirect_to bookings_path
  end




  def booking_params
    params.require(:booking).permit(:name, :date, :timeslot, :therapist, :price)
  end

end
