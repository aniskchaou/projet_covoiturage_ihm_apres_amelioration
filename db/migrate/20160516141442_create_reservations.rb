class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :id_membre
      t.integer :place_res
      t.integer :id_trajet
      t.string :commentaire

      t.timestamps null: false
    end
  end
end
