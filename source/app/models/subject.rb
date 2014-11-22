class Subject < ActiveRecord::Base
	belongs_to :exploration
	belongs_to :session
	belongs_to :curriculum
	belongs_to :vocabulary
	belongs_to :user
	belongs_to :class
	belongs_to :deck
	belongs_to :card
	has_many :users, through: :explorations
	has_many :classes, through: :curriculums
	has_many :decks, through: :sessions
	has_many :cards, through: :vocabularies
end