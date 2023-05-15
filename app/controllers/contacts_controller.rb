class ContactsController < ApplicationController


    def new
      @contact = Contact.new
    end

    def create
    @contact = Contact.new
      Contact.create(params.require(:contact).permit(:name, :email, :content))
      #
      if @contact.save
        redirect_to action: "new"
      else
        render :new

      end
    end
end
