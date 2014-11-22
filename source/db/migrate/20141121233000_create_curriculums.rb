class CreateCurriculums < ActiveRecord::Migration
	def change
		create_table :curriculums do |t|
			t.references :subject
			t.references :class

			t.timestamps
		end
	end
end