class CreateDeals < ActiveRecord::Migration
	def change
		create_table :deals do |t|
			t.references :deck
			t.references :card

			t.timestamps

		end
	end
end