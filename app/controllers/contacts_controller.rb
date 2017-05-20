class ContactsController < ApplicationController
  
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(check_params)
    @contact.user_id = current_user.id

    if @contact.save
      redirect_to user_path(current_user)
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
