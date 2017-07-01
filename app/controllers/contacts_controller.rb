class ContactsController < ApplicationController
  
  before_action :set_contact, except: [:new, :create]

  
  
  def new
    @contact = Contact.new
	@groups = Contact::GROUPS
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
    @groups = Contact::GROUPS
	
  end

  def update
    if @contact.update(check_params)
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end

  def destroy
    @contact.destroy
    redirect_to user_path(current_user)
  end
  
   
  private

  def check_params
    params.require(:contact).permit(:name, :email, :phone, :importance, :group)
  end
  
  def set_contact
    @contact = Contact.find(params[:id])
  end
  
end
