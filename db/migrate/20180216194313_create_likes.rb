class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false
      t.integer :meme_id, null: false
      t.boolean :liked, null: false

      t.timestamps
    end
    add_index :likes, :user_id
    add_index :likes, :meme_id
  end
end
