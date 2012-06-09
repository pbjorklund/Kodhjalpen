class AddAdminToUserAuth < ActiveRecord::Migration
  def change
    add_column :user_auths, :admin, :boolean, default: false
  end
end
