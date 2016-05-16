class AddNbPlaceToTrajets < ActiveRecord::Migration
  def change
    add_column :trajets, :nbr_place, :integer
  end
end
