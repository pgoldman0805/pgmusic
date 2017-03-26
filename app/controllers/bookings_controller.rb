class BookingsController < ApplicationController
    def new
        @bookings = Booking.new
    end
    
    def create
        # Mass assignment of form fields into Booking object
        @booking = Booking.new(booking_params)
        
        # Save the contact object to the database
        if @booking.save
          
          # Store form field parameters into local variables
          fname = params[:booking][:fname]
          lname = params[:booking][:lname]
          phone = params[:booking][:phone]
          email = params[:booking][:email]
          company = params[:booking][:company]
          type = params[:booking][:type]
          date = params[:booking][:date]
          details = params[:booking][:details]
          
          # Plug variables into Contact Mailer email method and send email
        #   ContactMailer.contact_email(name,email,body).deliver
          
          # Store success method into flash hash
          # and redirect to the 'new' action
          flash[:success] = "Booking request submitted. Paul will get back to you soon!"
          redirect_to new_booking_path
        else
          
          # If Booking object doesn't save,
          # store errors in Flash hash and redirect to 'new path'
          flash[:danger] = @booking.errors.full_messages.join("\n")
         redirect_to new_booking_path
        end
    end
    
    private
  
        # To collect data from form, we need to use strong parameters
        # and whitelist form fields
        def booking_params
         params.require(:booking).permit(:fname, :lname, :phone, :email, :company, :type, :date, :details)
        end
    
end