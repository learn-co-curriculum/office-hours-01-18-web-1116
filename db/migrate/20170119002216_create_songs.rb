class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist, array: true, default: []
      t.string :genre, array: true, default: []
      t.string :album, array: true, default: []

      t.timestamps
    end
  end
end
