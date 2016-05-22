class Ville < ActiveRecord::Base
	validates_presence_of :nom_ville
end
