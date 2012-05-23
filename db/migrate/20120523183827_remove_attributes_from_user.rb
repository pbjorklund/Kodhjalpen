class RemoveAttributesFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :occupation
    remove_column :users, :city
  end
end
