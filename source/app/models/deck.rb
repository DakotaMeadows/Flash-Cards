class Deck < ActiveRecord::Base
	belongs_to :dealer
	belongs_to :session
	belongs_to :study
	belongs_to :deal
	belongs_to :user
	belongs_to :class
	belongs_to :subject
	belongs_to :card
	has_many :users, through: :dealers
	has_many :classes, through: :studies
	has_many :subjects, through: :sessions
	has_many :cards, through: :deals
end