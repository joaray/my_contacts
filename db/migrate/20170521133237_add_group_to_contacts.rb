class AddGroupToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :group, :string
  end
end
