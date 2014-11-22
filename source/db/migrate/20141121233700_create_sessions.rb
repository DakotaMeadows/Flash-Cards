class CreateSessions < ActiveRecord::Migration
	def change
		create_table :sessions do |t|
			t.references :deck
			t.references :subject

			t.timestamps
		end
	end
end