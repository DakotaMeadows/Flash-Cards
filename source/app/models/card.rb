class Card < ActiveRecord::Base
	belongs_to :deck
	belongs_to :user
  belongs_to :deckcard
  belongs_to :usercard

	has_many :decks, through: :deckcards
	has_many :users, through: :usercards

  validates :name, :definition, :hint, presence: true
  validates :name, uniqueness: true
end
