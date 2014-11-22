class CreateStudies < ActiveRecord::Migration
	def change
		create_table :studies do |t|
			t.references :deck
			t.references :class

			t.timestamps
		end
	end
end