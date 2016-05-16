class CreateTrajets < ActiveRecord::Migration
  def change
    create_table :trajets do |t|
      t.integer :id_conducteur
      t.integer :id_voiture
      t.integer :id_avis
      t.text :id_ville_source
      t.text :id_ville_destination
      t.text :date
      t.integer :prix
      t.integer :nbr_place
      t.timestamps null: false
    end
  end
end
