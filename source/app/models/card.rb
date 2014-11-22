class Card < ActiveRecord::Base
	belongs_to :deck
	belongs_to :class

	validates :word, :definition, :hint, :deck_id, :class_id {:presence => true}
	validates :name, {:uniqueness => true}
end