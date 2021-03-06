class ContactsController < ApplicationController
   def new
       @contacts = Contact.new
   end
   # POST request to /contacts
  def create
    
    # Mass assignment of form fields into Contact object
    @contact = Contact.new(contact_params)
    
    # Save the contact object to the database
    if @contact.save
      
      # Store form field parameters into local variables
      name = params[:contact][:name]
      email = params[:contact][:email]
      body = params[:contact][:comments]
      
      # Plug variables into Contact Mailer email method and send email
      ContactMailer.contact_email(name,email,body).deliver
      
      # Store success method into flash hash
      # and redirect to the 'new' action
      flash[:success] = "Message sent."
      redirect_to new_contact_path
    else
      
      # If Contact object doesn't save,
      # store errors in Flash hash and redirect to 'new path'
      flash[:danger] = @contact.errors.full_messages.join(", ")
     redirect_to new_contact_path
    end
  end
  
  private
  
    # To collect data from form, we need to use strong parameters
    # and whitelist form fields
    def contact_params
     params.require(:contact).permit(:name, :email, :comments)
    end
   
end