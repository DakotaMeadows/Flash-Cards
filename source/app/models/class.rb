class Class < ActiveRecord::Base
	has_many :decks
	has_many :cards, through :decks

	validates :name {:presence => true, :uniqueness => true}
end