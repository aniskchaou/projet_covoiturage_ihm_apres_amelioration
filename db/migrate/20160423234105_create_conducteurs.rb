class CreateConducteurs < ActiveRecord::Migration
  def change
    create_table :conducteurs do |t|
      t.integer :idMembre
      t.text :grade

      t.timestamps null: false
    end
  end
end
