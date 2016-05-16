class AddPrixToTrajets < ActiveRecord::Migration
  def change
    add_column :trajets, :prix, :integer
  end
end
