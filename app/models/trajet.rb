class Trajet < ActiveRecord::Base
	def self.search(search,search2)
  
 where(['id_ville_source LIKE ? AND id_ville_destination LIKE ?', "%#{search}%", "%#{search2}%"])
   end
end
