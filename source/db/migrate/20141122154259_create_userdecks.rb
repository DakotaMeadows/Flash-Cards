class CreateUserdecks < ActiveRecord::Migration
  def change
    create_table :userdecks do |t|
      t.references :users
      t.references :decks

      t.timestamps
    end
  end
end
