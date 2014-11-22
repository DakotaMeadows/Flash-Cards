class CreateSchedules < ActiveRecord::Migration
	def change
		create_table :schedules do |t|
			t.references :user
			t.references :class

			t.timestamps
		end
	end
end