class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :first_name
      t.string :last_name
      t.string :occupation
      t.string :city
      t.string :email

      t.timestamps
    end
  end
end
