class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :upload_person
      t.datetime :upload_time
      t.string :url

      t.timestamps
    end
  end
end
