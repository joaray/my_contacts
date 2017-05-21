class Contact < ApplicationRecord

belongs_to :user

#validates_presence_of :name , message: "What's his/her name?"

end
