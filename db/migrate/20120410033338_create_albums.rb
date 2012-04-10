class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :question
      t.string :answer
      t.string :password

      t.timestamps
    end
  end
end
