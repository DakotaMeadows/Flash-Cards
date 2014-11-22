class CreateDeckcards < ActiveRecord::Migration
  def change
    create_table :deckcards do |t|
      t.references :decks
      t.references :cards

      t.timestamps
    end
  end
end
