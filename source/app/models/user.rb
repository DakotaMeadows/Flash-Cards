class User < ActiveRecord::Base
	belongs_to :dealer
	belongs_to :exploration
	belongs_to :schedule
	belongs_to :reading
	belongs_to :deck
	belongs_to :class
	belongs_to :subject
	belongs_to :card
	has_many :decks, through: :dealers
	has_many :classes, through: :schedules
	has_many :subjects, through: :explorations
	has_many :cards, through: :readings
end