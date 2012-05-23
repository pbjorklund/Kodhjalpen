class RenameDevelopersToUsers < ActiveRecord::Migration
  def change
    rename_table :developers, :users
  end
end
