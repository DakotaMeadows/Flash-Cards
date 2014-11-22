class CreateDealers < ActiveRecord::Migration
	def change
		create_table :dealers do |t|
			t.references :user
			t.references :deck

			t.timestamps
		end
	end
end