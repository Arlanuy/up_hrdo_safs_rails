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
        @message = "<i class='icon success'></i>
                <div class='content'>
                  <div class='header'>
                    'Message successfully sent!'
                  </div>
                    <p>'We will be in touch with you soon.'</p>
                </div>"
        render :new
      else
        #flash.now[:message] = 'Cannot send message.'
        @message = "<i class='icon success'></i>
                <div class='content'>
                  <div class='header'>
                    'Could not send your message! Please resend your e-mail.'
                  </div>
                    <p>'Contact HRDO if the problem still persists.'</p>
                </div>"
        render :new
      end


    end
end
