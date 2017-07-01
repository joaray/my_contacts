class UsersController < ApplicationController
	def show
		@contacts = current_user.contacts
		@groups = Contact::GROUPS
	end
end
