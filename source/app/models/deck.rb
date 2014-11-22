class Deck < ActiveRecord::Base
  belongs_to :card
  belongs_to :user
  belongs_to :deckcard
  belongs_to :userdeck

  has_many :cards, through: :deckcards
  has_many :users, through: :userdecks

  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
