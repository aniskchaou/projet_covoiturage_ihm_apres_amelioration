class CreateMembres < ActiveRecord::Migration
  def change
    create_table :membres do |t|
      t.text :nom
      t.text :prenom
      t.integer :age
      t.string :mdp
      t.string :email
      
      t.timestamps null: false
    end
  end
end
