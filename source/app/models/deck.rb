class Deck < ActiveRecord::Base
	has_many :cards
	belongs_to :class

	validates :name, :class_id {:presenc => true}
	validates :name {:uniqueness => true}
end