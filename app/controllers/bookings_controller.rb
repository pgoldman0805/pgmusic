class BookingsController < ApplicationController
    def new
        @bookings = Booking.new
    end
    def create
    end
    
end