class Book < ApplicationRecord
	validates :tittle, presence: true
	validates :description, presence: true

	belongs_to :author

end
