class RemoveNotNullConstraintFromUsersPicture < ActiveRecord::Migration[5.1]
  def change
    drop_table :users
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.attachment :picture
      t.string :bio, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.integer :age, null: false
      t.string :gender, null: false
      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :session_token, unique: true
  end
end
