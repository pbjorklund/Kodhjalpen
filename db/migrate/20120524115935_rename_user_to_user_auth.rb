class RenameUserToUserAuth < ActiveRecord::Migration
  def change
    rename_table :users, :user_auths
  end
end
