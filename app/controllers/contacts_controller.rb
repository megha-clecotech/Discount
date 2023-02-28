class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path, notice: "contact successfuly saved "
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :telephone, :msg)
  end
end
