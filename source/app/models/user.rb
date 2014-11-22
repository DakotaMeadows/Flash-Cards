class User < ActiveRecord::Base
	has_secure_password

	belongs_to :deck
	belongs_to :card
  belongs_to :userdeck
  belongs_to :usercard

	has_many :decks, through: :userdecks
	has_many :cards, through: :usercards

  validates :name, :password, presence: true
  validates :name, uniqueness: true
end
