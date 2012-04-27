class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.string :title
      t.integer :user_id
      t.integer :diary_type
      t.integer :diary_permission
      t.text :content

      t.timestamps
    end
  end
end
