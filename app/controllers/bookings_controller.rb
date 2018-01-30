class BookingsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]


    def services
        @all_services = Service.all.order(created_at: :asc)
    end


    def create
        @new_booking = current_user.booking.create(booking_params)
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

    private

    def booking_params
        params.require(:booking).permit(:name, :timing, :therapist, :price)
    end
end
