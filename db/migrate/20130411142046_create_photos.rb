class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :source
      t.integer :album_id, { null: false }
      t.timestamps
    end
    add_index :photos, :album_id
  end
end
