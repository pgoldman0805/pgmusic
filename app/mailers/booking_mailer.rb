class BookingMailer < ActionMailer::Base
    default to: 'paulgoldmanmusic@gmail.com'
    
    def booking_email(fname, lname, phone, email, company, eventtype, date, details)
        @fname = fname
        @lname = lname
        @phone = phone
        @email = email
        @company = company
        @eventtype = eventtype
        @date = date
        @details = details
        
        mail(from: email, subject: 'BOOKING Message from PaulGoldmanMusic.com')
    end
end