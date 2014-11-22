class Dictionary < ActiveRecord::Base
	belongs_to :class
	belongs_to :card
end