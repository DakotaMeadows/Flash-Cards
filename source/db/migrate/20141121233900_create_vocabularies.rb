class CreateVocabularies < ActiveRecord::Migration
	def change
		create_table :vocabularies do |t|
			t.references :subject
			t.references :card

			t.timestamps
		end
	end
end
