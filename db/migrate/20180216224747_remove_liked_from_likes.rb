class RemoveLikedFromLikes < ActiveRecord::Migration[5.1]
  def change
    drop_table :likes
    create_table :likes do |t|
      t.integer :user_id, null: false
      t.integer :meme_id, null: false
      t.timestamps
    end
    add_index :likes, :user_id
    add_index :likes, :meme_id
  end
end
