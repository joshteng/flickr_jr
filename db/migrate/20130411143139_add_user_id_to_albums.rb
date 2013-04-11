class AddUserIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :user_id, :integer, { null: false }
    add_index :albums, :user_id
  end
end
