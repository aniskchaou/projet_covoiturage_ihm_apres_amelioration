class CreateVoitures < ActiveRecord::Migration
  def change
    create_table :voitures do |t|
      t.integer :nb_place
      t.string :marque
      t.string :couleur
      t.string :matricule

      t.timestamps null: false
    end
  end
end
