class CreateAvis < ActiveRecord::Migration
  def change
    create_table :avis do |t|
      t.text :date
      t.text :commentaire

      t.timestamps null: false
    end
  end
end
