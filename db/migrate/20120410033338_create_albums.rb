class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :user_id
      t.string :name
      t.string :descript
      t.string :question
      t.integer :permiss ,:default => 0
      t.string :answer
      t.string :password

      t.timestamps
    end
  end
end
