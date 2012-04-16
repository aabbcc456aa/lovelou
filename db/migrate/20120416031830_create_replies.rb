class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :reply_type
      t.string :reply_user_id
      t.string :reply_content
      t.integer :subject_id

      t.timestamps
    end
  end
end
