class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :upload_person
      t.datetime :upload_time
      t.string :url
      t.string :descript
      t.integer :album_id

      t.timestamps
    end
  end
end
