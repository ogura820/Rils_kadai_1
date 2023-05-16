class ContactsController < ApplicationController


    def new
      @contact = Contact.new
    end

    def create
      @contact = Contact.new(params.require(:contact).permit(:name, :email, :content))
    #   Contact.create(params.require(:contact).permit(:name, :email, :content))
      #
      if @contact.save
        redirect_to new_contact_path
      else
        render :new

      end
    end
end
