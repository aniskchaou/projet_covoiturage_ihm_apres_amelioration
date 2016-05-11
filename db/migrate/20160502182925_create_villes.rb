class CreateVilles < ActiveRecord::Migration
  def change
    create_table :villes do |t|
     
      t.string :nom_ville

      t.timestamps null: false
    end
  end
end
