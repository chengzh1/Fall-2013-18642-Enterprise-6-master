class CreateGameRooms < ActiveRecord::Migration
  def change
    create_table :game_rooms do |t|
      t.string :name
      t.integer :maxplayers

      t.timestamps
    end
  end
end
