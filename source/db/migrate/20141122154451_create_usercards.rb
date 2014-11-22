class CreateUsercards < ActiveRecord::Migration
  def change
    create_table :usercards do |t|
      t.references :users
      t.references :cards

      t.timestamps
    end
  end
end
