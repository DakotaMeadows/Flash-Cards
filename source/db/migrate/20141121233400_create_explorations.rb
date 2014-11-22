class CreateExplorations < ActiveRecord::Migration
	def change
		create_table :explorations do |t|
			t.references :user
			t.references :subject

			t.timestamps
		end
	end
end