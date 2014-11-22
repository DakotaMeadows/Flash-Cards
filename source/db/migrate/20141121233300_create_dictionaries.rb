class CreateDictionaries < ActiveRecord::Migration
	def change
		create_table :dictionaries do |t|
			t.references :class
			t.references :card

			t.timestamps
		end
	end
end