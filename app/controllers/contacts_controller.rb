class ContactsController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(check_params)
    @contact.user_id = @current_user.id

    if @contact.save
      #@contact = contact.find_by(user_id: @current_user.id, title: @contact.title)
      redirect_to user_contact_path(@current_user.id, @contact)
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  
  private

  def check_params
      params.require(:contact).permit(:name, :email, :phone, :importance)
  end
end
