class CreateCards < ActiveRecord::Migration
	def change
		create_table :cards do |t|
			t.string :word
			t.string :definition
			t.string :hint

			t.timestamps
		end
	end
end
