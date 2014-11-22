class Class < ActiveRecord::Base
	belongs_to :schedule
	belongs_to :study
	belongs_to :curriculum
	belongs_to :dictionary
	belongs_to :user
	belongs_to :deck
	belongs_to :subject
	belongs_to :card
	has_many :users, through: :schedules
	has_many :decks, through: :studies
	has_many :subjects, through: :curriculums
	has_many :cards, through: :dictionaries
end