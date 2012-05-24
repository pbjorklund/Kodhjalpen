class AddAuthableIdAndAuthableTypeToUserAuth < ActiveRecord::Migration
  def change
    change_table :user_auths do |t|
      t.references :authable, :polymorphic => true
    end
  end
end
