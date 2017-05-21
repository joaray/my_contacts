class Contact < ApplicationRecord

belongs_to :user

attr_accessor :osoba

# def initialize

# end


@groups = ["work","friends","family","services"]

@osoba_m = "Ala"

end
