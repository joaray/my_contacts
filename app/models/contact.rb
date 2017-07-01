class Contact < ApplicationRecord

belongs_to :user
scope :work, -> { where(group: 'work') }
scope :friends, -> { where(group: 'friends') }
scope :family, -> { where(group: 'family') }
scope :services, -> { where(group: 'services') }

GROUPS = [ 'family', 'work', 'friends', 'services']
 
end
