class CreateReadings < ActiveRecord::Migration
	def change
		create_table :readings do |t|
			t.references :user
			t.references :card

			t.timestamps
		end
	end
end