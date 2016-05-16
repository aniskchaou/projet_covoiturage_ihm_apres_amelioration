class Membre < ActiveRecord::Base
	has_many :conducteurs

	def self.search(email,mdp)

		where(['email LIKE ? AND mdp LIKE ?', "%#{email}%", "%#{mdp}%"])
	end
end
