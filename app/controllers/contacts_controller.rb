class ContactsController < ApplicationController
    def new
      @contact = Contact.new
    end

    def create

      @message = ""
      @contact = Contact.new(params[:contact])
      @contact.request = request
      if @contact.deliver
        #flash.now[:message] = nil
        @error = 0
        @message = "Message successfully sent!"
        @submessage = "We will be in touch with you soon"
        render :new

      else
        #flash.now[:message] = 'Cannot send message.'
        @error = 1
        @message = "Could not send your message! Please resend your e-mail."
        @submessage = "Contact HRDO if the problem still persists."
        render :new
      end
    end
end
