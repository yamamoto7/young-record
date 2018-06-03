class Item < ApplicationRecord
	attachment :image
	belongs_to :genre

	def self.search(search)
	  if search
	    where('name LIKE ?', "%#{search}%").order('id DESC')
	  else
		order('id DESC')
	  end
	end
end
