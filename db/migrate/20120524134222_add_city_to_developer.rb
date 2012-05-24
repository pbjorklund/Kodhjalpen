class AddCityToDeveloper < ActiveRecord::Migration
  def change
    change_table :developers do |t|
      t.string :city
    end
  end
end
