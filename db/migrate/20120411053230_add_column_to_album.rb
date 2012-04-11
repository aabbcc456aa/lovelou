class AddColumnToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :description, :string
    add_column :albums, :album_type, :integer
    add_column :albums, :count, :integer
    add_column :albums, :front_photo_id, :integer
  end
end
