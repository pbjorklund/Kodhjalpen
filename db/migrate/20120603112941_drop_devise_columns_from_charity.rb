class DropDeviseColumnsFromCharity < ActiveRecord::Migration
  def change
    remove_column :charities, :email
    remove_column :charities, :encrypted_password
    remove_column :charities, :reset_password_token
    remove_column :charities, :reset_password_sent_at
    remove_column :charities, :remember_created_at
    remove_column :charities, :sign_in_count
    remove_column :charities, :current_sign_in_at
    remove_column :charities, :last_sign_in_at
    remove_column :charities, :current_sign_in_ip
    remove_column :charities, :last_sign_in_ip
  end
end
