class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.string :mission
      t.string :needs_help_with
      t.string :city

      t.timestamps
    end
  end
end
